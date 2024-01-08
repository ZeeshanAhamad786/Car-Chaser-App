import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/colors/color.dart';

customScaffoldMessenger(
  BuildContext context,
  String text,
) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
      backgroundColor: MyColors.myAppThemeColor,
      duration: const Duration(seconds: 2),
    ),
  );
}

Future<void> timeOutExceptionDialogBox() {
  return Get.defaultDialog(
    backgroundColor: MyColors.myAppThemeColor,
    titlePadding: EdgeInsets.only(top: 3.h),
    title: 'Oops, Something Went Wrong!',
    titleStyle: TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
    ),
    content: Column(
      children: [
        customWhiteMediumText(
          text:
              'Don\'t worry - it\'s not your fault. Try to fix your Internet Connection.',
          textAlign: TextAlign.center,
          fontSize: 14.sp,
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.h),
          child: outlineButton(
            'Okay',
            onTap: () => Get.back(),
          ),
        )
      ],
    ),
  );
}

Widget customWhiteMediumText({
  color,
  text,
  TextAlign? textAlign,
  fontSize,
  fontFamily,
}) {
  return Text(
    text ?? '',
    textAlign: textAlign,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget outlineButton(text, {Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(3.2.h),
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 0.8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.2.h),
          border: Border.all(
            color: Colors.white,
          )),
      child: customWhiteMediumText(
        text: text,
        fontSize: 14.sp,
      ),
    ),
  );
}

class CustomInfoText extends StatelessWidget {
  final String label;
  final String text;
  final bool isDivider;

  const CustomInfoText(
      {super.key,
      required this.label,
      required this.text,
      this.isDivider = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0XFF3D3D3D),
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff1F1F1F),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 0.5.h),
        isDivider == true
            ? const Divider(
                color: Color(0XFFEBEBEB),
                thickness: 1.5,
              )
            : Container(),
      ],
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const CustomIndicator(
      {super.key, required this.itemCount, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) => Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.only(right: 0.8.h),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? Colors.green
                : Colors.grey.withOpacity(0.25),
          ),
        ),
      ),
    );
  }
}
