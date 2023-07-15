import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Consts/colors.dart';
class WidgetUtil {
  static Widget backButton({
    required Function function,
    required EdgeInsets margin,
  }) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Padding(
        padding: margin,
        child: SvgPicture.asset(
          'assets/images/Buttons/backButton.svg',
          height:  Get.height * .13,
          width:  Get.height * .13,
        ),
      ),
    );
  }

  static Widget settingButton({
    required Function function,
    required EdgeInsets margin,
  }) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Padding(
        padding: margin,
        child: SvgPicture.asset(
          'assets/images/Buttons/settingButton.svg',
          height: Get.height * .13,
          width: Get.height * .13,
        ),
      ),
    );
  }

  static Widget homeButton({
    required Function function,
    required EdgeInsets margin,
  }) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Padding(
        padding: margin,
        child: SvgPicture.asset(
          'assets/images/Buttons/homeButton.svg',
          height: Get.height * .13,
          width: Get.height * .13,
        ),
      ),
    );
  }

  static Widget textField({
    required double width,
    required double height,
    required String hint,
    required Color bgColor,
    Widget suffix = const SizedBox(),
    Widget prefix = const SizedBox(),
    bool enable = true,
    required TextEditingController controller,
    required TextStyle textStyle,
    EdgeInsets margin = EdgeInsets.zero,
    EdgeInsets padding = EdgeInsets.zero,
    TextAlign textAlign = TextAlign.right,
    TextInputType inputType = TextInputType.text,
    bool autoFocus = false,
    bool obscureText = false,
    required BorderRadius radius,
  }) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: radius,
      ),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        style: textStyle,
        enabled: enable,
        textAlign: textAlign,
        keyboardType: inputType,
        autofocus: autoFocus,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 13.0,
            color: textRedColor.withOpacity(.5),
            fontFamily: 'xKoodak',
          ),
          enabled: enable,
          suffix: suffix,
          prefix: prefix,
        ),
      ),
    );
  }

  static Widget bg({required String bgPath, required Widget body}) {
    return Stack(
      children: [
        SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image(
            image: AssetImage(
              bgPath,
            ),
            fit: BoxFit.fill,
          ),
        ),
        body,
      ],
    );
  }
}
