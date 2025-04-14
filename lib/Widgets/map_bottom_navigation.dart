import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/1Camera_Screen.dart';
import 'package:flutter_application_3/screens/Camera_Screen.dart';
import 'package:flutter_application_3/screens/clothing_screen.dart';
import 'package:flutter_application_3/screens/festival_planner.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 66,
      margin: const EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
        color: const Color(0xFFFF44CC), // #F4C
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 20,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Navigation Icon
          GestureDetector(
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => FestivalPlannerScreen()));
            },
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/9c1b4626949ce996d77c3600b5576249092fa5b8',
            width: 48,
            height: 48,
          ),
          ),
          // Shirt Icon
          GestureDetector(
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => ClothingScreen()));
            },
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/e1a6eb8ccf4374c36a3e198a5a7fbfc42aacf31d',
            width: 48,
            height: 48,
            ),
          ),
          
          GestureDetector(
            onTap: () async{
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const Center(child: CircularProgressIndicator()),);

              final cameras = await availableCameras();

              Navigator.pop(context);

              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=> ReadyToScanScreen()));
            },
            child:Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/39039e20edbc1fed8ade372f9c49c1bf7a3e53f6',
            width: 48,
            height: 48,
          ),
          ),

          // Trophy Icon
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/9d05a652e93ddddf48718095aa714463c8384603',
            width: 48,
            height: 48,
          ),
        ],
      ),
    );
  }
}