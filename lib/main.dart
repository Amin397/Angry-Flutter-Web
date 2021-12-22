import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Consts/color_utils.dart';
import 'Consts/routing_utils.dart';
import 'Screens/Splash/View/splash_screen.dart';

void main() async{
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'iranSans',
        scrollbarTheme: ScrollbarThemeData(
          isAlwaysShown: true,
          radius: const Radius.circular(10.0),
          thumbColor: MaterialStateProperty.all(
            ColorUtil.mainColor.withOpacity(0.5),
          ),
          thickness: MaterialStateProperty.all(5.0),
          minThumbLength: 100,
        ),
        // canvasColor: ColorUtil.mainAccent,
        // primarySwatch: ColorUtil.myOrange,
      ),
      getPages: [
        RoutingUtils.splash,
      ],
      builder: EasyLoading.init(),
      home: SplashScreen(),
    ),
  );
}


void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.cubeGrid
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..userInteractions = false
    ..dismissOnTap = false
    ..indicatorSize = 100.0
    ..fontSize = 18.0
    ..progressColor = ColorUtil.mainColor
    ..backgroundColor = Colors.transparent
    ..indicatorColor = ColorUtil.mainColor
    ..textColor = Colors.white
  // ..maskColor = Colors.blue
    ..maskType = EasyLoadingMaskType.black
    ..userInteractions = true
    ..dismissOnTap = true;
}




