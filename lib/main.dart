import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'screens/Camera_Screen.dart';
import 'screens/map_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MapScreen(),
      title: 'NXNE App',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF7EDB),
        scaffoldBackgroundColor: Colors.white,
      )
    )
    );
  }


}

 