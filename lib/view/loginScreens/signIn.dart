import 'package:car_chaser_app/controller/auth_controller/sign_in_controller.dart';
import 'package:car_chaser_app/view/loginScreens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../../validations/validations.dart';
import '../../widget/widgets.dart';
import 'otpVerification.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  SignInController signInController =
      Get.put(SignInController(), tag: 'signInController');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Transform.translate(
                            offset: const Offset(3, 0),
                            child: const Icon(Icons.arrow_back_ios, size: 16))),
                  ),
                ),
                const Text(
                  "Car Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                  width: 30,
                )
              ],
            ),
          ),
          SvgPicture.asset(
            "assets/svg/signincar.svg",
            fit: BoxFit.fitWidth,
          ),
          Transform.translate(
            offset: const Offset(0, -15),
            child: const Text(
              "Sign In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xffA7B5BB).withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 3))
              ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                controller: signInController.phoneNumberTextController,
                keyboardType: TextInputType.phone,
                cursorColor: MyColors.myAppThemeColor,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    contentPadding: const EdgeInsets.all(8),
                    prefixIcon: Transform.scale(
                        scale: 0.4,
                        child: SvgPicture.asset("assets/svg/lockemail.svg")),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffixIconConstraints:
                        const BoxConstraints(minHeight: 38, maxWidth: 40),
                    hintText: "Phone Number",
                    hintStyle: const TextStyle(
                        color: Color(0xffDFDFDF), fontSize: 14)),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(190, 40),
                  backgroundColor: MyColors.myAppThemeColor),
              onPressed: () {
                Get.to(() => const OTPScreen(
                  phoneNumberTextController: '',
                ));


                // if (Validations.handleSingInScreenError(
                //   phoneNumberTextController:
                //       signInController.phoneNumberTextController,
                // ).isNotEmpty) {
                //   customScaffoldMessenger(
                //       context,
                //       Validations.handleSingInScreenError(
                //         phoneNumberTextController:
                //             signInController.phoneNumberTextController,
                //       ));
                // } else {
                //   signInController.handleSignIn(context,
                //       phoneNumber: signInController
                //           .phoneNumberTextController.text
                //           .trim());
                // }
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
          ),
              // Obx(
              //   () => signInController.isLoadingSignIn.value
              //       ? SizedBox(
              //     height: 2.5.h,
              //     width: 2.5.h,
              //     child: CircularProgressIndicator(
              //       color: Colors.white,
              //       strokeWidth: 2.5,
              //       backgroundColor: Colors.grey.withOpacity(0.2),
              //     ),
              //   )
              //       : const Text(
              //           "Sign In",
              //           style: TextStyle(
              //               color: Colors.white, fontWeight: FontWeight.bold),
              //         ),
              // )),
          SizedBox(
            height: 2.h,
          ),
          const Center(child: Text("OR",style: TextStyle(color:  Colors.black),)),
          SizedBox(height: 1.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/google.svg"),SizedBox(width: 2.h,),
              SvgPicture.asset("assets/svg/APPLE.svg"),
            ],),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an Account?",
                  style: TextStyle(color: Color(0xff707070), fontSize: 12)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignUpScreen()));
                  },
                  child: const Text(" Sign Up",
                      style: TextStyle(
                        color: Color(0xff4E9C0B),
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
        ]),
      ),
    );
  }
}
