import 'dart:async';
import 'dart:convert';
import 'package:car_chaser_app/view/loginScreens/otpVerification.dart';
import 'package:flutter/cupertino.dart';

import '../../services/api_services.dart';
import '../../services/time_out_method.dart';
import '../../widget/widgets.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var isLoadingSignIn = false.obs;
  var isLoadingResendOTP = false.obs;

  Timer? timer;
  var remainSeconds = 1;
  var isResend = false.obs;
  var resendTimer = '00:00'.obs;

  timerForResendOTP(int seconds) {
    remainSeconds = seconds;
    const duration = Duration(seconds: 1);
    timer = Timer.periodic(duration, (Timer timer) {
      if (remainSeconds == -1) {
        isResend.value = true;
        timer.cancel();
      } else {
        int minutes = remainSeconds ~/ 60;
        int seconds = remainSeconds % 60;
        resendTimer.value =
            "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}";
        remainSeconds--;
      }
    });
  }

  TextEditingController phoneNumberTextController = TextEditingController();

  // Sign In Controller
  handleSignIn(
    BuildContext context, {
    phoneNumber,
  }) async {
    isLoadingSignIn.value = true;

    AuthApisServices.getSignIn(
      phoneNumber: phoneNumber,
    ).then((response) async {
      var jsonData = jsonDecode(response.body);

      if (response == null) {
        timeOutException(loading: isLoadingSignIn);
      } else if (response.statusCode == 200) {
        isLoadingSignIn.value = false;

        // Go to next screen
        Get.to(() => OTPScreen(
              phoneNumberTextController: phoneNumberTextController.text,
            ));

        timerForResendOTP(30);
        customScaffoldMessenger(context, 'Sent OTP successfully');
      } else if (response.statusCode == 500) {
        isLoadingSignIn.value = false;
        customScaffoldMessenger(
            context, 'Something went wrong. Please try again.');
      } else {
        isLoadingSignIn.value = false;
        customScaffoldMessenger(context, jsonData['errors']['msg']);
      }
    });
  }

  // Resend OTP Controller
  handleResendOTP(
    BuildContext context, {
    phoneNumber,
  }) async {
    isLoadingResendOTP.value = true;

    AuthApisServices.getResendOTP(
      phoneNumber: phoneNumber,
    ).then((response) async {
      var jsonData = jsonDecode(response.body);

      if (response == null) {
        timeOutException(loading: isLoadingResendOTP);
      } else if (response.statusCode == 200) {
        isLoadingResendOTP.value = false;
        isResend.value = false;
        timerForResendOTP(30);
        customScaffoldMessenger(context, 'Sent OTP successfully');
      } else if (response.statusCode == 500) {
        isLoadingResendOTP.value = false;
        customScaffoldMessenger(
            context, 'Something went wrong. Please try again.');
      } else {
        isLoadingResendOTP.value = false;
        customScaffoldMessenger(context, jsonData['errors']['msg']);
      }
    });
  }
}
