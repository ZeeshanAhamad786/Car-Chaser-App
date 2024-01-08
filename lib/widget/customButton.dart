import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;


  CustomElevatedButton({
    required this.buttonText,
    required this.onPressed,
    this.buttonColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(fixedSize: Size(30.h, 5.8.h),
        primary: buttonColor, // Button color
        onPrimary: textColor,
        // Text color
      ),
      child: Text(buttonText,textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
    );
  }
}