import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'api_base_url.dart';

class AuthApisServices {
  // Sign Up
  static getSignUp({
    firstName,
    lastName,
    email,
    phoneNumber,
    postalCode,
    city,
  }) async {
    final url = Uri.parse('${ApiBaseUrl.url}/auth/register');
    log('current api url: $url');

    final headers = {
      'Content-Type': 'application/json',
    };

    Map<String, dynamic> body = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phoneNumber": phoneNumber,
      "postalCode": postalCode,
      "city": city,
      "userType": "customer" //dealer admin
    };

    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    log('current api JsonBody: $jsonBody');

    try {
      http.Response response = await http
          .post(url, headers: headers, body: jsonBody, encoding: encoding)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      });
      log('current api Data: ${response.body}');
      return response;
    } on TimeoutException catch (error) {
      log('A timeout occurred.: $error');
      return null;
    } on SocketException catch (error) {
      log('$error');
      return null;
    }
  }

  // Sign In
  static getSignIn({
    phoneNumber,
  }) async {
    final url = Uri.parse('${ApiBaseUrl.url}/auth/login');
    log('current api url: $url');

    final headers = {
      'Content-Type': 'application/json',
    };

    Map<String, dynamic> body = {"phoneNumber": phoneNumber};

    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    log('current api JsonBody: $jsonBody');

    try {
      http.Response response = await http
          .post(url, headers: headers, body: jsonBody, encoding: encoding)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      });
      log('current api Data: ${response.body}');
      return response;
    } on TimeoutException catch (error) {
      log('A timeout occurred.: $error');
      return null;
    } on SocketException catch (error) {
      log('$error');
      return null;
    }
  }

  // Resend OTP
  static getResendOTP({
    phoneNumber,
  }) async {
    final url = Uri.parse('${ApiBaseUrl.url}/auth/resend');
    log('current api url: $url');

    final headers = {
      'Content-Type': 'application/json',
    };

    Map<String, dynamic> body = {"phoneNumber": phoneNumber};

    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    log('current api JsonBody: $jsonBody');

    try {
      http.Response response = await http
          .post(url, headers: headers, body: jsonBody, encoding: encoding)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      });
      log('current api Data: ${response.body}');
      return response;
    } on TimeoutException catch (error) {
      log('A timeout occurred.: $error');
      return null;
    } on SocketException catch (error) {
      log('$error');
      return null;
    }
  }

  // Verify OTP
  static getVerifyOTP({
    phoneNumber,
    otp,
  }) async {
    final url = Uri.parse('${ApiBaseUrl.url}/auth/verify');
    log('current api url: $url');

    final headers = {
      'Content-Type': 'application/json',
    };

    Map<String, dynamic> body = {
      "phoneNumber": phoneNumber,
      "otp": otp,
    };

    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    log('current api JsonBody: $jsonBody');

    try {
      http.Response response = await http
          .post(url, headers: headers, body: jsonBody, encoding: encoding)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      });
      log('current api Data: ${response.body}');
      return response;
    } on TimeoutException catch (error) {
      log('A timeout occurred.: $error');
      return null;
    } on SocketException catch (error) {
      log('$error');
      return null;
    }
  }
}

class CarApisServices {
  // Upload Car Image
  static getUploadCarImage({
    required String token,
    required File image,
  }) async {
    final url = Uri.parse('${ApiBaseUrl.url}/customer/car/image/add');
    log('current api url: $url');

    var request = http.MultipartRequest('POST', url);

    // Add headers to the request
    request.headers['Authorization'] = 'Bearer $token';

    // Add file to the multipart request
    request.files.add(http.MultipartFile(
      'image',
      image.readAsBytes().asStream(),
      image.lengthSync(),
      filename: image.path,
    ));

    try {
      // Send the request
      var streamedResponse = await request.send();

      // Listen for the response
      var response = await http.Response.fromStream(streamedResponse);

      log('current api Data: ${response.body}');
      return response;
    } on TimeoutException catch (error) {
      log('A timeout occurred.: $error');
      return null;
    } on SocketException catch (error) {
      log('$error');
      return null;
    }
  }
}
