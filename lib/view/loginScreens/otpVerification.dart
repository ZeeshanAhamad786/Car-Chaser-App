import 'dart:developer';
import 'package:car_chaser_app/controller/auth_controller/sign_in_controller.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/auth_controller/verify_otp_controller.dart';
import '../../utils/colors/color.dart';
import '../../validations/validations.dart';
import '../../widget/widgets.dart';
import '../bottomNavigationBar/bottomNavigationBar.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key, required this.phoneNumberTextController})
      : super(key: key);

  final String phoneNumberTextController;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  VerifyOTPController verifyOTPController =
      Get.put(VerifyOTPController(), tag: 'verifyOTPController');
  SignInController signInController = Get.find(tag: 'signInController');

  @override
  void dispose() {
    super.dispose();
    if (signInController.timer != null) {
      signInController.timer!.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffFCEBCF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 7, // Blur radius
                offset: const Offset(0, 3), // Offset (vertical, horizontal)
              ),
            ],
          ),
          child: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.transparent, // Make the AppBar transparent
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.black, size: 16),
                  onPressed: () {
                    Get.back();
                  },
                ),
                const Text(
                  "OTP Verification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 40.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Color(0xffFCEBCF)),
            child: Center(
                child: SvgPicture.asset(
              "assets/svg/otp.svg",
            )),
          ),
          Transform.translate(
            offset: const Offset(0, -25),
            child: Container(
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 4.h),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                SizedBox(
                  height: 3.h,
                ),
                const Center(
                    child: Text(
                  "Enter Verification Code",
                  style: TextStyle(
                      color: Color(0xff515151),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )),
                SizedBox(
                  height: 3.h,
                ),
                const Text(
                  "We have sent OTP on your Number",
                  style: TextStyle(
                    color: Color(0xff707070),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: PinCodeTextField(
                    controller: verifyOTPController.otpTextController,
                    length: 6,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    cursorColor: MyColors.myAppThemeColor,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(15),
                        fieldHeight: 45,
                        fieldWidth: 40,
                        selectedColor: MyColors.myAppThemeColor,
                        activeFillColor: Colors.white,
                        inactiveColor: MyColors.myAppThemeColor,
                        activeColor: const Color(0xff4E9C0B)),
                    animationDuration: const Duration(milliseconds: 200),

                    onChanged: (value) {
                      log(value.toString());
                    },
                    beforeTextPaste: (text) {
                      log("Allowing to paste $text");
                      return true;
                    },
                    appContext: context, // Provide the context here
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(190, 45),
                        backgroundColor: MyColors.myAppThemeColor),
                    onPressed: () {
                      Get.offAll(const MyBottomNavigationBar(selectedIndex: 1,));
                      Get.snackbar("Success", 'Add Car Successfully.',
                          colorText: Colors.white,
                          backgroundColor: MyColors.myAppThemeColor);


                      // Get.back();
                      // Get.back();
                      // Get.back();
                      // Get.back();

                      // if (Validations.handleOTPScreenError(
                      //   otpTextController: verifyOTPController.otpTextController,
                      // ).isNotEmpty) {
                      //   customScaffoldMessenger(
                      //       context,
                      //       Validations.handleOTPScreenError(
                      //         otpTextController:
                      //             verifyOTPController.otpTextController,
                      //       ));
                      // } else {
                      //   verifyOTPController.handleVerifyOTP(context,
                      //       phoneNumber: widget.phoneNumberTextController,
                      //       otp: verifyOTPController.otpTextController.text);
                      // }
                    },
                    child:
                        Center(child: SvgPicture.asset("assets/svg/ARROW.svg"))
                    //     Obx(
                    //   () => verifyOTPController.isLoadingVerifyOTP.value
                    //       ? SizedBox(
                    //           height: 2.5.h,
                    //           width: 2.5.h,
                    //           child: CircularProgressIndicator(
                    //             color: Colors.white,
                    //             strokeWidth: 2.5,
                    //             backgroundColor: Colors.grey.withOpacity(0.2),
                    //           ),
                    //         )
                    //       : SvgPicture.asset("assets/svg/ARROW.svg"),
                    // )),
                    ),
                SizedBox(
                  height: 2.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't Receive a OTP?",
                        style:
                            TextStyle(color: Color(0xff515151), fontSize: 12)),
                    Text(" Resend OTP",
                        style: TextStyle(
                            color: Color(0xff4E9C0B),
                            fontWeight: FontWeight.w500,
                            fontSize: 12)),
                    SizedBox(
                      height: 10,
                      width: 10,
                    )
                  ],
                ),
                // Obx(
                //   () => signInController.isResend.value
                //       ? InkWell(
                //           onTap: () {
                //             signInController.handleResendOTP(context,
                //                 phoneNumber: widget.phoneNumberTextController);
                //           },
                //           child: const Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Text("Didn't Receive a OTP?",
                //                   style: TextStyle(
                //                       color: Color(0xff515151), fontSize: 12)),
                //               Text(" Resend OTP",
                //                   style: TextStyle(
                //                       color: Color(0xff4E9C0B),
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: 12)),
                //               SizedBox(
                //                 height: 10,
                //                 width: 10,
                //               )
                //             ],
                //           ),
                //         )
                //       : Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             const Text("Resend OTP in ",
                //                 style: TextStyle(
                //                     color: Color(0xff515151), fontSize: 12)),
                //             Text(
                //                 "${signInController.resendTimer.value} seconds",
                //                 style: const TextStyle(
                //                     color: Color(0xff4E9C0B),
                //                     fontWeight: FontWeight.w500,
                //                     fontSize: 12)),
                //             const SizedBox(
                //               height: 10,
                //               width: 10,
                //             )
                //           ],
                //         ),
                // ),
              ]),
            ),
          ),
          Transform.translate(
              offset: const Offset(0, 25),
              child: SvgPicture.asset("assets/svg/bottomimage.svg"))
        ]),
      ),
    );
  }
}
