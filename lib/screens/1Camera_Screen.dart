import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'Camera_Screen.dart'; // or wherever your YoloVideo is

class ReadyToScanScreen extends StatelessWidget {
  const ReadyToScanScreen({super.key});

  Future<void> openCamera(BuildContext context) async {
    // Optional: show loading spinner while initializing camera
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    
    final cameras = await availableCameras();

    Navigator.pop(context);

    Navigator.push(context, MaterialPageRoute(
      builder: (context) => YoloVideo(camerass: cameras),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ready to Scan'),
      ),
       body: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.white, Colors.pinkAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
      child: Stack(
      children: [
      Positioned(
        top: 50,
        left: 69,
        child: Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.pinkAccent, // border color
        width: 3,             // border thickness
      ),
      borderRadius: BorderRadius.circular(40), // rounded corners
      image: DecorationImage(
        image: AssetImage('assets/Untitled design.png'),
        fit: BoxFit.cover,
      )
      )
        ),
      ),
      
    
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 300), // pushes everything down
            const Text(
              'Ready to Scan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => openCamera(context),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Start Scan'),
            ),
            Align(
  alignment: Alignment.center,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30), // or EdgeInsets.all(20)
    child: Text(
      'Welcome to the NXPLORE Automatic Object Scanner. '
      'Please press "start scan" whenever ready and point your back camera '
      'towards purchased apparel, food, or item!',
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center, // optional for cleaner layout
    ),
  ),
),

          ],
        ),
      ),
      ],
    )
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: 1, // if "Scan" is the current screen
    onTap: (int index) {
      // Implement page switching here if needed
    },
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera_alt),
        label: 'Scan',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      )
    ],
    )
    );
  }
}
