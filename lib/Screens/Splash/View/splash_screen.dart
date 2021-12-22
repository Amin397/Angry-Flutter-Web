import 'package:angry_flutter/Consts/color_utils.dart';
import 'package:angry_flutter/Screens/Splash/Controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(
            vertical: Get.height * .02,
          ),
          // color: ColorUtil.mainAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Made With',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 12.0,
                      ),
                      children: const [
                        TextSpan(
                          text: ' Flutter',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: ColorUtil.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    height: 3.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorUtil.mainColor.withOpacity(.05),
                          ColorUtil.mainColor.withOpacity(.2),
                          ColorUtil.mainColor,
                          ColorUtil.mainColor.withOpacity(.2),
                          ColorUtil.mainColor.withOpacity(.05),
                        ]
                      )
                    ),
                    margin: EdgeInsets.symmetric(
                      vertical: Get.height * .05,
                    ),
                    width: splashController.dividerHeight,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: Get.height * .7,
                      width: Get.height * .7,
                    child: Stack(
                      children: [
                        Lottie.asset('assets/anim/circle wave.json',
                          height: Get.height * .7,
                          width: Get.height * .7,
                        ),
                        Center(
                          child: SizedBox(
                            height: splashController.logoHeight,
                              width: splashController.logoWidth,
                            child: const Image(
                              image: AssetImage('assets/images/angry_logo.png'),
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                  SizedBox(
                    height: Get.height * .005,
                  ),
                  const Text(
                    'ANGRY FLUTTER',
                    style: TextStyle(
                      fontFamily: 'angryFont',
                      color: ColorUtil.mainColor,
                      fontSize: 48.0,
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
