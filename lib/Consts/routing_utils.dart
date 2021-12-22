
import 'package:angry_flutter/Screens/Splash/View/splash_screen.dart';
import 'package:get/get.dart';

class RoutingUtils {
  static GetPage splash = GetPage(
    name: '/',
    page: () => SplashScreen(),
  );

}

class ClubRoutingUtils extends RoutingUtils {

  static GetPage splash = GetPage(
    name: '/thirdPersonInsurance',
    page: () => SplashScreen(),
  );
}
