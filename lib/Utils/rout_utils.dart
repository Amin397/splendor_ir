
import 'package:get/get.dart';

import '../Views/Splash/splash_screen.dart';


class NameRouts{
  static const String splash = '/splash';
  static const String home = '/home';

}

class PageRout {
  static List<GetPage> pages = [


    GetPage(
      name: NameRouts.splash,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)
    ),
  ];
}