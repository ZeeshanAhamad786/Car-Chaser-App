import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/api_services.dart';
import '../../services/time_out_method.dart';
import '../../utils/colors/color.dart';
import '../../utils/constant/constants.dart';

class UploadCarImageController extends GetxController {
  var isLoadingUploadImage = false.obs;
  var selectedImage = Rx<File?>(null);
  RxList<File?> listOfSelectedImage = <File?>[].obs;
  // RxList<String> listOfSelectedImage = <String>[].obs;

  // Upload Car ImageController
  handleUploadCarImage({
    image,
  }) async {
    CarApisServices.getUploadCarImage(
      token: Constants.token.value,
      image: image,
    ).then((response) async {
      var jsonData = jsonDecode(response.body);
      if (response == null) {
        timeOutException(loading: isLoadingUploadImage);
      } else if (response.statusCode == 200) {
        isLoadingUploadImage.value = false;

        // listOfSelectedImage.insert(0, jsonData['url']);
        // log('List of Selected Images: $listOfSelectedImage');
      } else if (response.statusCode == 500) {
        isLoadingUploadImage.value = false;
        Get.snackbar("Error", 'Something went wrong. Please try again.',
            colorText: Colors.white,
            backgroundColor: MyColors.myAppThemeColor.withOpacity(0.5));
      } else {
        isLoadingUploadImage.value = false;
        Get.snackbar("Error", jsonData['error'],
            colorText: Colors.white,
            backgroundColor: MyColors.myAppThemeColor.withOpacity(0.5));
      }
    });
  }

  // picking car image
  pickedCarImage() async {
    final picker = ImagePicker();
    try {
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        isLoadingUploadImage.value = true;
        selectedImage.value = File(pickedFile.path);
        log('Selected Image: ${selectedImage.value.toString().substring(7, selectedImage.value.toString().length - 1)}');

        listOfSelectedImage.insert(0, selectedImage.value);
        log('List of Selected Images: $listOfSelectedImage');

        // handleUploadCarImage(image: selectedImage.value);
      } else {
        Get.snackbar("No Image", "Please Select Image",
            colorText: Colors.white,
            backgroundColor: MyColors.myAppThemeColor.withOpacity(0.5));
      }
    } catch (e) {
      Get.snackbar("Error", " ${e.toString()}",
          colorText: Colors.white,
          backgroundColor: MyColors.myAppThemeColor.withOpacity(0.5));
    }
  }
}
