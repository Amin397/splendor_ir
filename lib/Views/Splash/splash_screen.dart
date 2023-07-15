
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Splash/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.red,
      ),
    );
  }
}
