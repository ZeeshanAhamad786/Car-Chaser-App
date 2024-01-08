import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CommonAppBar extends StatelessWidget {
  final String titleText;
  final RxBool step1st;
  final RxBool step1st1;
  final RxBool step2nd;
  final RxBool step3rd;
  final RxBool step4th;
  final RxBool step5th;
  final RxBool step6th;
  Function()? pressToBack;

  CommonAppBar(
      {super.key,
      required this.titleText,
      required this.step1st,
      required this.step1st1,
      required this.step2nd,
      required this.step3rd,
      required this.step4th,
      required this.step5th,
      required this.step6th,
      this.pressToBack});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBar(
        toolbarHeight: 15.h,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: pressToBack,
                        child: const Icon(Icons.arrow_back_ios,
                            color: Color(0xff707070), size: 18),
                      ),
                      SizedBox(
                        width: 1.h,
                      ),
                      Text(titleText,
                          style: const TextStyle(
                              color: Color(0xff707070), fontSize: 17)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    child: AnimatedContainer(
                  height: 3.5.h,
                  width: 3.5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: step1st1.value == true
                          ? const Color(0xff4E9C0B)
                          : const Color(0xff96B6C5).withOpacity(0.26),
                      borderRadius: BorderRadius.circular(8)),
                  duration: const Duration(milliseconds: 300),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.fastOutSlowIn,
                  child: Icon(
                    Icons.check,
                    color: step1st1.value == true
                        ? Colors.white
                        : const Color(0xff96B6C5).withOpacity(0),
                    size: 2.h,
                  ),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: Divider(
                  height: 0,
                  color: const Color(0xff96B6C5).withOpacity(0.26),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: AnimatedContainer(
                  height: 3.5.h,
                  width: 3.5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: step2nd.value == true
                          ? const Color(0xff4E9C0B)
                          : const Color(0xff96B6C5).withOpacity(0.26),
                      borderRadius: BorderRadius.circular(8)),
                  duration: const Duration(milliseconds: 300),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.linear,
                  child: Icon(
                    Icons.check,
                    color: step2nd.value == true
                        ? Colors.white
                        : const Color(0xff96B6C5).withOpacity(0),
                    size: 2.h,
                  ),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: Divider(
                  height: 0,
                  color: const Color(0xff96B6C5).withOpacity(0.26),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                  child: AnimatedContainer(
                    height: 3.5.h,
                    width: 3.5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: step3rd.value == true
                            ? const Color(0xff4E9C0B)
                            : const Color(0xff96B6C5).withOpacity(0.26),
                        borderRadius: BorderRadius.circular(8)),
                    duration: const Duration(milliseconds: 300),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.linear,
                    child: Icon(
                      Icons.check,
                      color: step3rd.value == true
                          ? Colors.white
                          : const Color(0xff96B6C5).withOpacity(0),
                      size: 2.h,
                    ),
                  ),
                ),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: Divider(
                  height: 0,
                  color: const Color(0xff96B6C5).withOpacity(0.26),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                  child: AnimatedContainer(
                    height: 3.5.h,
                    width: 3.5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: step4th.value == true
                            ? const Color(0xff4E9C0B)
                            : const Color(0xff96B6C5).withOpacity(0.26),
                        borderRadius: BorderRadius.circular(8)),
                    duration: const Duration(milliseconds: 300),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.linear,
                    child: Icon(
                      Icons.check,
                      color: step4th.value == true
                          ? Colors.white
                          : const Color(0xff96B6C5).withOpacity(0),
                      size: 2.h,
                    ),
                  ),
                ),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: Divider(
                  height: 0,
                  color: const Color(0xff96B6C5).withOpacity(0.26),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: AnimatedContainer(
                  height: 3.5.h,
                  width: 3.5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: step5th.value == true
                          ? const Color(0xff4E9C0B)
                          : const Color(0xff96B6C5).withOpacity(0.26),
                      borderRadius: BorderRadius.circular(8)),
                  duration: const Duration(milliseconds: 300),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.linear,
                  child: Icon(
                    Icons.check,
                    color: step5th.value == true
                        ? Colors.white
                        : const Color(0xff96B6C5).withOpacity(0),
                    size: 2.h,
                  ),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: Divider(
                  height: 0,
                  color: const Color(0xff96B6C5).withOpacity(0.26),
                )),
                SizedBox(width: 0.5.h),
                Expanded(
                    child: AnimatedContainer(
                  height: 3.5.h,
                  width: 3.5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: step6th.value == true
                          ? const Color(0xff4E9C0B)
                          : const Color(0xff96B6C5).withOpacity(0.26),
                      borderRadius: BorderRadius.circular(8)),
                  duration: const Duration(milliseconds: 300),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.linear,
                  child: Icon(
                    Icons.check,
                    color: step6th.value == true
                        ? Colors.white
                        : const Color(0xff96B6C5).withOpacity(0),
                    size: 2.h,
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
