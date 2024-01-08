import 'dart:async';
import 'dart:developer';

import 'package:car_chaser_app/view/bottomNavigationBar/bottomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/colors/color.dart';
import '../utils/constant/constants.dart';
import 'onboardScreen/onBoardScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Get.offAll(() => const OnBoardScreen()));
  }

  // alreadyLogin() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //
  //   if (sharedPreferences.getString('token') != null) {
  //     Constants.token = RxString(sharedPreferences.getString('token') ?? '');
  //     log('Token: ${Constants.token}');
  //   }
  //   Future.delayed(
  //       const Duration(seconds: 3),
  //       () => sharedPreferences.getBool('isLogin') == true
  //           ? Get.offAll(() => const MyBottomNavigationBar())
  //           : Get.offAll(() => const OnBoardScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      alignment: Alignment.center,
      color: MyColors.myAppThemeColor,
      child: SvgPicture.asset("assets/svg/splash_icon.svg", width: 150),
    );
  }
}
