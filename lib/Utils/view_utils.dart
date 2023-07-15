import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Consts/measures.dart';

String formatTime({
  required Duration duration,
}) {
  String strDigits(int n) => n.toString().padLeft(2, '0');
  final minutes = strDigits(duration.inMinutes.remainder(60));
  final seconds = strDigits(duration.inSeconds.remainder(60));
  return [
    {minutes, seconds}
  ].join(':').replaceAll('{', '').replaceAll('}', '').replaceAll(', ', ':');
}

// String moneyFormat({required double price}) {
//   return MoneyFormatter(amount: price).output.withoutFractionDigits;
// }



Widget blurBg(){
  return BackdropFilter(
    filter: ImageFilter.blur(
      sigmaY: 2.5,
      sigmaX: 2.5,
    ),
    child: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.transparent,
    ),
  );
}


String persianNumber({required String number}) {

  Map numbers = {
    '0' : '۰',
    '1' : '۱',
    '2' : '۲',
    '3' : '۳',
    '4' : '۴',
    '5' : '۵',
    '6' : '۶',
    '7' : '۷',
    '8' : '۸',
    '9' : '۹',
  };

  numbers.forEach((key, value) => number = number.replaceAll(key, value));

  return number;
}





void showErrorSnakeBar({
  required String body,
}) async {
  Get.snackbar('خطایی رخ داد', body,
      backgroundColor: Colors.red.withOpacity(.5),
      snackPosition: SnackPosition.BOTTOM,
      margin: paddingAll28,
      colorText: Colors.white,
      animationDuration: const Duration(milliseconds: 800),
      duration: const Duration(seconds: 3),
      boxShadows: shadow(),
      icon: Lottie.asset(
        'assets/anims/faild.json',
      ),
      isDismissible: true,
      borderWidth: 2.0,
      borderColor: Colors.red);
}

void showSuccessSnakeBar({
  required String body,
}) async {
  Get.snackbar(
    '',
    body,
    backgroundColor: Colors.green.withOpacity(.5),
    snackPosition: SnackPosition.BOTTOM,
    margin: paddingAll28,
    colorText: Colors.white,
    animationDuration: const Duration(milliseconds: 800),
    duration: const Duration(seconds: 3),
    boxShadows: shadow(),
    icon: Lottie.asset(
      'assets/anims/success.json',
    ),
    isDismissible: true,
    borderWidth: 2.0,
    borderColor: Colors.green,
  );
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
