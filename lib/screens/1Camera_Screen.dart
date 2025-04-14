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

    // Initialize cameras
    final cameras = await availableCameras();

    // Close loading spinner
    Navigator.pop(context);

    // Navigate to camera screen
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              child: const Text('Start Scanning'),
            ),
          ],
        ),
      ),
    );
  }
}
