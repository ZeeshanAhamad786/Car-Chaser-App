import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors/color.dart';

class CustomTextFieldSignUp extends StatelessWidget {
  final String hintText;
  final bool? readOnly;
  final String prefixIconPath;
  final String? suffixIconPath;
  TextEditingController? controller;
  TextInputType? keyboardType;
  Function()? onTap;
  CustomTextFieldSignUp({
    super.key,
    required this.hintText,
    required this.prefixIconPath,
    this.suffixIconPath,
    this.controller,
    this.keyboardType,
    this.onTap,
    this.readOnly
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: const Color(0xffA7B5BB).withOpacity(0.3),
              blurRadius: 6,
              offset: const Offset(0, 3))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly??false,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: MyColors.myAppThemeColor,
        decoration: InputDecoration(
            isDense: true,
            prefixIcon: Transform.scale(
              scale: 0.4,
              child: SvgPicture.asset(
                prefixIconPath,
                height: 20.0,
                width: 20.0,
              ),
            ),
            contentPadding: const EdgeInsets.all(8),
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xffDFDFDF), fontSize: 14),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                )),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
