import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/constant/colors.dart';
import 'package:musify/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: darkForignColor,
      body: Center(
        child: Image.asset('assets/images/spotify_logo.png'),
      ),
    );
  }
}
