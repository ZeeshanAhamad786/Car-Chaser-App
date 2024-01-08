class Validations {
  static String handleSingUpScreenError({
    firstNameTextController,
    lastNameTextController,
    emailTextController,
    phoneNumberTextController,
    postalCodeTextController,
    cityTextController,
  }) {
    if (firstNameTextController.text.isEmpty) {
      return "First name not be empty.";
    } else if (lastNameTextController.text.isEmpty) {
      return "Last name not be empty.";
    } else if (emailTextController.text.isEmpty) {
      return "Email not be empty.";
    } else if (phoneNumberTextController.text.isEmpty) {
      return "Phone number not be empty.";
    } else if (postalCodeTextController.text.isEmpty) {
      return "Postal Code not be empty.";
    } else if (cityTextController.text.isEmpty) {
      return "City not be empty.";
    } else if (!isValidEmail.hasMatch(emailTextController.text)) {
      return "Please check your email.";
    } else {
      return '';
    }
  }

  static String handleSingInScreenError({
    phoneNumberTextController,
  }) {
    if (phoneNumberTextController.text.isEmpty) {
      return "Phone number not be empty.";
    } else {
      return '';
    }
  }

  static String handleOTPScreenError({
    otpTextController,
  }) {
    if (otpTextController.text.isEmpty) {
      return "OTP not be empty.";
    } else if (otpTextController.text.length < 4) {
      return "OTP is Required.";
    } else {
      return '';
    }
  }
}

RegExp isValidEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
