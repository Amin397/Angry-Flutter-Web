import 'package:get/get.dart';

class SplashController extends GetxController {
  double dividerHeight = 0.0;
  double logoHeight = Get.height * .5;
  double logoWidth = Get.height * .5;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 50), () {
      dividerHeight = Get.width * .95;
      update();
    });

    super.onInit();
  }
}
