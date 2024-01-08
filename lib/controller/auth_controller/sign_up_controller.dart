import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/api_services.dart';
import '../../services/time_out_method.dart';
import '../../view/loginScreens/signIn.dart';
import '../../widget/widgets.dart';

class SignUpController extends GetxController {
  var isLoadingSignUp = false.obs;

  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController phoneNumberTextController = TextEditingController();
  TextEditingController postalCodeTextController = TextEditingController();
  TextEditingController cityTextController = TextEditingController();

  // Sign Up Controller
  handleSignUp(
    BuildContext context, {
    firstName,
    lastName,
    email,
    phoneNumber,
    postalCode,
    city,
  }) async {
    isLoadingSignUp.value = true;

    AuthApisServices.getSignUp(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      postalCode: postalCode,
      city: city,
    ).then((response) async {
      var jsonData = jsonDecode(response.body);

      if (response == null) {
        timeOutException(loading: isLoadingSignUp);
      } else if (response.statusCode == 201) {
        isLoadingSignUp.value = false;

        // Go to next screen
        Get.to(() => const SignInScreen());


        // Clear All Text Edit Controllers in Sign up
        firstNameTextController.clear();
        lastNameTextController.clear();
        emailTextController.clear();
        phoneNumberTextController.clear();
        postalCodeTextController.clear();
        cityTextController.clear();

        customScaffoldMessenger(context, 'User register is successfully');
      } else if (response.statusCode == 500) {
        isLoadingSignUp.value = false;
        customScaffoldMessenger(
            context, 'Something went wrong. Please try again.');
      } else {
        isLoadingSignUp.value = false;
        if(jsonData['error'] != null){
          customScaffoldMessenger(context, jsonData['error']);
        }else{
          customScaffoldMessenger(context, jsonData['message']);
        }
      }
    });
  }
}
