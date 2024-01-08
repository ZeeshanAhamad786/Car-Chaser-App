import 'dart:convert';
import 'dart:developer';
import 'package:car_chaser_app/model/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../services/api_services.dart';
import '../../services/time_out_method.dart';
import '../../utils/constant/constants.dart';
import '../../view/bottomNavigationBar/bottomNavigationBar.dart';
import '../../widget/widgets.dart';

class VerifyOTPController extends GetxController {
  var isLoadingVerifyOTP = false.obs;
  late SignInModel signInModel;

  TextEditingController otpTextController = TextEditingController();

  setTokenAndLoginStatusToSharedPreferences() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Save Token and IsLogin in SharedPreferences
    sharedPreferences.setString('token', signInModel.token ?? '');
    sharedPreferences.setBool('isLogin', signInModel.status ?? false);

    if (sharedPreferences.getString('token') != null) {
      Constants.token = RxString(sharedPreferences.getString('token') ?? '');
      log('Token: ${Constants.token}');
    }
    log('User Login Status: ${sharedPreferences.getBool('isLogin')}');
    log('User Login Token: ${sharedPreferences.getString('token')}');
  }

  // Sign In Controller
  handleVerifyOTP(
    BuildContext? context, {
    phoneNumber,
    otp,
  }) async {
    isLoadingVerifyOTP.value = true;

    AuthApisServices.getVerifyOTP(
      phoneNumber: phoneNumber,
      otp: otp,
    ).then((response) async {
      var jsonData = jsonDecode(response.body);

      if (response == null) {
        timeOutException(loading: isLoadingVerifyOTP);
      } else if (response.statusCode == 200) {
        isLoadingVerifyOTP.value = false;

        // Add Data to Model
        signInModel = signInModelFromJson(response.body.toString());

        if (signInModel.token!.isNotEmpty) {
          setTokenAndLoginStatusToSharedPreferences();
          // Go to next screen
          // Get.offAll(() => const MyBottomNavigationBar());

          otpTextController.clear();
        }
      } else if (response.statusCode == 500) {
        isLoadingVerifyOTP.value = false;
        customScaffoldMessenger(
            context!, 'Something went wrong. Please try again.');
      } else {
        isLoadingVerifyOTP.value = false;
        customScaffoldMessenger(context!, jsonData['errors']['msg']);
      }
    });
  }
}
