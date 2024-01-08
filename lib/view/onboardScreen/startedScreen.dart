import 'package:car_chaser_app/view/loginScreens/signUp.dart';
import 'package:car_chaser_app/widget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../bottomNavigationBar/bottomNavigationBar.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myAppThemeColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(children: [
          Container(
            height: 60.h,
            decoration: const BoxDecoration(),
            child: Image.asset("assets/png/CROSSIMAGE.png", fit: BoxFit.cover),
          ),
          Container(
            height: 40.h,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
            child: Column(children: [
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Selling your car ",
                          style: TextStyle(
                            color: MyColors.myAppThemeColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: " Made Easy",
                          style: TextStyle(
                            color: Color(0xff4E9C0B),
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              const Center(
                child: Text(
                  "let’s talk cars, are you ready?",
                  style: TextStyle(
                    color: Color(0xff949494),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomElevatedButton(
                  buttonText: "Get Started",
                  buttonColor: MyColors.myAppThemeColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.offAll(() => const MyBottomNavigationBar(
                          selectedIndex: 0,
                        ));
                  }),
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                  child: SvgPicture.asset(
                "assets/svg/bottomimage.svg",
                fit: BoxFit.cover,
              )),
            ]),
          ),
        ]),
      ),
    );
  }
}
