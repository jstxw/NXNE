  import 'dart:core';
  import 'package:flutter/material.dart';
  import 'package:camera/camera.dart';
  import 'package:flutter_vision/flutter_vision.dart';
  //import 'package:flutter/foundation.dart';

  late List<CameraDescription> cameras;

  Offset _dragPosition = const Offset(65, 30); // initial position

Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
      cameras = await availableCameras();
      runApp(const MyApp());
  }
  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      );
  }
  }
  class YoloVideo extends StatefulWidget {
    final List<CameraDescription> camerass;
    const YoloVideo({super.key, required this.camerass});// YoloVideo accepts the camera 

    @override
    State<YoloVideo> createState() => _YoloVideoState();
  }

  class _YoloVideoState extends State<YoloVideo> {
  
    late CameraController controller;
    late FlutterVision vision;
    late List<Map<String, dynamic>> yoloResults;

    CameraImage? cameraImage;
    bool isLoaded = false;
    bool isDetecting = false;
    double confidenceThreshold = 0.1;

    @override
    void initState() {
      super.initState();
      init();
    }
    Future<void> init() async {
      vision = FlutterVision();
    // cameras = await availableCameras(); // not need already passed from main
      final FrontCamera = widget.camerass.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => widget.camerass[0],//use widget.camerass to reference
      );
      controller = CameraController(FrontCamera, ResolutionPreset.low);
      await controller.initialize();
      await loadYoloModel();

      setState(() {
        isLoaded = true;
        isDetecting = false;
        yoloResults = [];
      });
    }
    
    @override
    void dispose() {
      super.dispose();
      controller.dispose();
      vision.closeYoloModel();
    }
    @override
    Widget build(BuildContext context){
      final Size size = MediaQuery.of(context).size;

      if(!isLoaded){
        return Scaffold(
          body:Center(
            child: Text("Model not loaded, waiting for it"),
          )
        );
      }
    
    return Scaffold(
      appBar: AppBar(
    title: const Text('Live Scanner'),
    backgroundColor: Colors.white, // Optional styling
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      }
    )
      ),
    body: Stack(
      fit: StackFit.expand,
      children: [
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: CameraPreview(controller),
        ),
        Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 150,
          width: 1000, 
          color: Colors.black,
        ),
      ),
        ...displayBoxesAroundRecognizedObjects(size),
        buildLiveDetectionBox(),
        Positioned(
          bottom: 45,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.red,
                style: BorderStyle.solid,
              ),
            ), // 👈 closing the BoxDecoration properly
            child: isDetecting
                ? IconButton(
                    onPressed: () async {
                      stopDetection();
                    },
                    icon: const Icon(
                      Icons.stop,
                      color: Colors.red,
                    ),
                    iconSize: 50,
                  )
                : IconButton(
                    onPressed: () async {
                      await startDetection();
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    iconSize: 50,
                  ),
          ), // 👈 closing Container
        ), // 👈 closing Positioned
    
       ],
    ),
    
  );
  }

      Future<void> loadYoloModel() async {
      await vision.loadYoloModel(
        labels: 'assets/labels.txt',
        modelPath: 'assets/yolov8n.tflite',
        modelVersion: "yolov8",
        quantization: false,
        numThreads: 1,
        useGpu: false,
      );
    }
      Future<void> yoloOnFrame(CameraImage cameraImage) async {
      final result = await vision.yoloOnFrame(
          bytesList: cameraImage.planes.map((plane) => plane.bytes).toList(),
          imageHeight: cameraImage.height,
          imageWidth: cameraImage.width,
          iouThreshold: 0.2,
          confThreshold: 0.2,
          classThreshold: 0.2);
      if (result.isNotEmpty) {
        setState(() {
          yoloResults = result;
        });
      }
    }
    Future <void> startDetection() async{
      setState((){
        isDetecting = true;
      });
      if (controller.value.isStreamingImages) {
        return;
      }
      await controller.startImageStream((image) async { //wait until it starts 
        if (isDetecting) {
          cameraImage = image;
          yoloOnFrame(image);
        }
      });
    }
    Future<void> stopDetection() async {
      setState(() {
        isDetecting = false;
        yoloResults.clear();
      });
      
    }
  // Create rounding boxes 
    List<Widget> displayBoxesAroundRecognizedObjects(Size screen) {
      if(yoloResults.isEmpty) return[];
      double factorX = screen.width / (cameraImage?.height ?? 1);
      double factorY = screen.height / (cameraImage?.width ?? 1);
      Color colorPick = const Color.fromARGB(255, 242, 4, 4);
      return yoloResults.map((result) {
        double objectX = result["box"][0] * factorX;
        double objectY = result["box"][1] * factorY;
        double objectWidth = (result["box"][2] - result["box"][0]) * factorX;
        double objectHeight = (result["box"][3] - result["box"][1]) * factorY;
    
        return Positioned(
          left: objectX,
          top: objectY,
          width: objectWidth,
          height: objectHeight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(color: const Color.fromARGB(255, 14, 10, 61), width: 2.0),
            ),
            child: Text(
              "${result['tag']} ${(result['box'][4] * 100)}",
              style: TextStyle(
                background: Paint()..color = colorPick,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 18.0,
              ),
        ),
      ),
    );
  }).toList(); 
}
Widget buildLiveDetectionBox() {
  return Positioned(
    left: _dragPosition.dx,
    top: _dragPosition.dy,
    child: GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _dragPosition += details.delta;
        });
      },
  
    child: Container(
      constraints: BoxConstraints(
    minWidth: 250,
    maxWidth: 400,
    ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 201, 16, 161).withOpacity(1.0), 
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: yoloResults.isEmpty
          ? const Text(
              'No detections',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: yoloResults.map((result) {
                final tag = result['tag'];
                final confidence = (result['box'][4] * 100).toStringAsFixed(2);
                return Text(
                  '$tag: $confidence%',
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                );
              }).toList(),
            ),
    ),
  )
  );
   
}
  }