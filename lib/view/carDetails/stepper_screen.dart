
import 'package:car_chaser_app/view/carDetails/UploadImages.dart';
import 'package:car_chaser_app/view/carDetails/additional%20Features.dart';
import 'package:car_chaser_app/view/carDetails/condition&Record.dart';
import 'package:car_chaser_app/view/carDetails/uploadVehicle1.dart';
import 'package:car_chaser_app/view/loginScreens/signUp.dart';
import 'package:car_chaser_app/widget/CommanAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../../utils/colors/color.dart';
import 'Condition&Record1.dart';
import 'ConditionAndRecord2.dart';
import 'uploadVehicle2.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  var step1st = true.obs;
  var step1st1 = false.obs;
  var step2nd = false.obs;
  var step3rd = false.obs;
  var step4th = false.obs;
  var step5th = false.obs;
  var step6th = false.obs;
  var isBack = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => PopScope(
        canPop: step1st.value == true &&
            step1st1.value == false &&
            step2nd.value == false &&
            step3rd.value == false &&
            step4th.value == false &&
            step5th.value == false &&
            step6th.value == false
            ? true
            : isBack.value,
        onPopInvoked: (didPop) {
          if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == false &&
              step3rd.value == false &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false) {
            step1st.value = true;
            step1st1.value = false;
            step2nd.value = false;
            step3rd.value = false;
            step4th.value = false;
            step5th.value = false;
            step6th.value = false;

            isBack.value = true;
          } else if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == false &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false) {
            step1st.value = true;
            step1st1.value = true;
            step2nd.value = false;
            step3rd.value = false;
            step4th.value = false;
            step5th.value = false;
            step6th.value = false;

            isBack.value = false;
          } else if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false) {
            step1st.value = true;
            step1st1.value = true;
            step2nd.value = true;
            step3rd.value = false;
            step4th.value = false;
            step5th.value = false;
            step6th.value = false;

            isBack.value = false;
          } else if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == true &&
              step5th.value == false &&
              step6th.value == false) {
            step1st.value = true;
            step1st1.value = true;
            step2nd.value = true;
            step3rd.value = true;
            step4th.value = false;
            step5th.value = false;
            step6th.value = false;

            isBack.value = false;
          } else if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == true &&
              step5th.value == true &&
              step6th.value == false) {
            step1st.value = true;
            step1st1.value = true;
            step2nd.value = true;
            step3rd.value = true;
            step4th.value = true;
            step5th.value = false;
            step6th.value = false;

            isBack.value = false;
          } else if (didPop == false &&
              step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == true &&
              step5th.value == true &&
              step6th.value == true) {
            step1st.value = true;
            step1st1.value = true;
            step2nd.value = true;
            step3rd.value = true;
            step4th.value = true;
            step5th.value = true;
            step6th.value = false;

            isBack.value = false;
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120.0),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFF4E98B8).withOpacity(0.2),
                      // Shadow color
                      // Spread radius
                      blurRadius: 30,
                      // Blur radius
                      offset:
                      const Offset(0, 20), // Offset (vertical, horizontal)
                    ),
                  ],
                ),
                child: CommonAppBar(
                  titleText: step1st.value == true &&
                      step1st1.value == false &&
                      step2nd.value == false &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false
                      ? 'Upload Vehicle'
                      : step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == false &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false
                      ? 'Upload Vehicle'
                      : step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false
                      ? 'Additional Features'
                      : step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false
                      ? 'Condition & Record'
                      : step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == false &&
                      step6th.value == false
                      ? 'Condition & Record'
                      : step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == true &&
                      step6th.value == false
                      ? 'Condition & Record'
                      : "Add Images",
                  step1st: RxBool(step1st.value),
                  step1st1: RxBool(step1st1.value),
                  step2nd: RxBool(step2nd.value),
                  step3rd: RxBool(step3rd.value),
                  step4th: RxBool(step4th.value),
                  step5th: RxBool(step5th.value),
                  step6th: RxBool(step6th.value),
                  pressToBack: () {
                    if (step1st.value == true &&
                        step1st1.value == false &&
                        step2nd.value == false &&
                        step3rd.value == false &&
                        step4th.value == false &&
                        step5th.value == false &&
                        step6th.value == false) {
                      Get.back();
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == false &&
                        step3rd.value == false &&
                        step4th.value == false &&
                        step5th.value == false &&
                        step6th.value == false) {
                      step1st.value = true;
                      step1st1.value = false;
                      step2nd.value = false;
                      step3rd.value = false;
                      step4th.value = false;
                      step5th.value = false;
                      step6th.value = false;
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == true &&
                        step3rd.value == false &&
                        step4th.value == false &&
                        step5th.value == false &&
                        step6th.value == false) {
                      step1st.value = true;
                      step1st1.value = true;
                      step2nd.value = false;
                      step3rd.value = false;
                      step4th.value = false;
                      step5th.value = false;
                      step6th.value = false;
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == true &&
                        step3rd.value == true &&
                        step4th.value == false &&
                        step5th.value == false &&
                        step6th.value == false) {
                      step1st.value = true;
                      step1st1.value = true;
                      step2nd.value = true;
                      step3rd.value = false;
                      step4th.value = false;
                      step5th.value = false;
                      step6th.value = false;
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == true &&
                        step3rd.value == true &&
                        step4th.value == true &&
                        step5th.value == false &&
                        step6th.value == false) {
                      step1st.value = true;
                      step1st1.value = true;
                      step2nd.value = true;
                      step3rd.value = true;
                      step4th.value = false;
                      step5th.value = false;
                      step6th.value = false;
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == true &&
                        step3rd.value == true &&
                        step4th.value == true &&
                        step5th.value == true &&
                        step6th.value == false) {
                      step1st.value = true;
                      step1st1.value = true;
                      step2nd.value = true;
                      step3rd.value = true;
                      step4th.value = true;
                      step5th.value = false;
                      step6th.value = false;
                    } else if (step1st.value == true &&
                        step1st1.value == true &&
                        step2nd.value == true &&
                        step3rd.value == true &&
                        step4th.value == true &&
                        step5th.value == true &&
                        step6th.value == true) {
                      step1st.value = true;
                      step1st1.value = true;
                      step2nd.value = true;
                      step3rd.value = true;
                      step4th.value = true;
                      step5th.value = true;
                      step6th.value = false;
                    }
                  },
                )),
          ),
          body: step1st.value == true &&
              step1st1.value == false &&
              step2nd.value == false &&
              step3rd.value == false &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false
              ? const UploadVehicle1()
              : step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == false &&
              step3rd.value == false &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false
              ? const UploadVehicle2()
              : step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == false &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false
              ? const AdditionalFeatures()
              : step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == false &&
              step5th.value == false &&
              step6th.value == false
              ? const ConditionAndRecord()
              : step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == true &&
              step5th.value == false &&
              step6th.value == false
              ? const ConditionAndRecord1()
              : step1st.value == true &&
              step1st1.value == true &&
              step2nd.value == true &&
              step3rd.value == true &&
              step4th.value == true &&
              step5th.value == true &&
              step6th.value == false
              ? const ConditionAndRecord2()
              : const UploadImages(),
          bottomNavigationBar: Padding(
            padding:
            EdgeInsets.only(left: 4.h, bottom: 2.h, right: 4.h, top: 1.h),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(220, 45),
                    backgroundColor: MyColors.myAppThemeColor),
                onPressed: () {
                  if (step1st.value == true &&
                      step1st1.value == false &&
                      step2nd.value == false &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = false;
                    step3rd.value = false;
                    step4th.value = false;
                    step5th.value = false;
                    step6th.value = false;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == false &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = true;
                    step3rd.value = false;
                    step4th.value = false;
                    step5th.value = false;
                    step6th.value = false;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == false &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = true;
                    step3rd.value = true;
                    step4th.value = false;
                    step5th.value = false;
                    step6th.value = false;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == false &&
                      step5th.value == false &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = true;
                    step3rd.value = true;
                    step4th.value = true;
                    step5th.value = false;
                    step6th.value = false;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == false &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = true;
                    step3rd.value = true;
                    step4th.value = true;
                    step5th.value = true;
                    step6th.value = false;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == true &&
                      step6th.value == false) {
                    step1st.value = true;
                    step1st1.value = true;
                    step2nd.value = true;
                    step3rd.value = true;
                    step4th.value = true;
                    step5th.value = true;
                    step6th.value = true;
                  } else if (step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == true &&
                      step6th.value == true) {
                    // Next Screen Route
                    Get.to(const SignUpScreen());

                  }
                },
                child: Text(
                  step1st.value == true &&
                      step1st1.value == true &&
                      step2nd.value == true &&
                      step3rd.value == true &&
                      step4th.value == true &&
                      step5th.value == true &&
                      step6th.value == true
                      ? "Confirm"
                      : "Next",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                )),
          ),
        ),
      ),
    );
  }
}
