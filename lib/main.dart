import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Utils/rout_utils.dart';
import 'Views/Splash/splash_screen.dart';

void main() async {

  await GetStorage.init();


  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then(
        (value) {
      Future.delayed(
        const Duration(seconds: 1),
            () {
          runApp(
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              getPages: PageRout.pages,
              initialRoute: NameRouts.splash,
              home: SplashScreen(),
            ),
          );
        },
      );
    },
  );
}
