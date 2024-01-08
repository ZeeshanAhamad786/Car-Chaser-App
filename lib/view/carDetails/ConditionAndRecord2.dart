import 'package:car_chaser_app/widget/CustomRecordCondition1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';

class ConditionAndRecord2 extends StatefulWidget {
  const ConditionAndRecord2({Key? key}) : super(key: key);

  @override
  State<ConditionAndRecord2> createState() => _ConditionAndRecord1State();
}

class _ConditionAndRecord1State extends State<ConditionAndRecord2> {
  var readyToSell = 'Not Select'.obs;
  var warningLight = 'Not Select'.obs;
  var accidentClaim = 'Not Select'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Container(
              height: 19.h,
              margin: EdgeInsets.symmetric(horizontal: 2.5.h),
              padding: EdgeInsets.symmetric(horizontal: 1.5.h),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xffA7B5BB).withOpacity(0.5),
                    blurRadius: 30,
                    offset: const Offset(0, 20))
              ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Now is the perfect moment\nto sell your vehicle.No time!",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Text(
                        "Share details about your vehicle to receive a solid offer within minutes",
                        style:
                            TextStyle(color: Color(0XFF515151), fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/condition2image.svg",
                  fit: BoxFit.contain,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xffA7B5BB).withOpacity(0.5),
                      offset: const Offset(0, 20),
                      blurRadius: 30)
                ],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(55),
                    topLeft: Radius.circular(55))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: Column(children: [
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 6.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFFA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "How soon are you ready to sell?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xff515151), fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            readyToSell.value = "Immediately";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: readyToSell.value == "Immediately"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Immediately",
                                style: TextStyle(
                                  color: readyToSell.value == "Immediately"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.h,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            readyToSell.value = "2-3 Months";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: readyToSell.value == "2-3 Months"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "2-3 Months",
                                style: TextStyle(
                                  color: readyToSell.value == "2-3 Months"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.h,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            readyToSell.value = "6 Months";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: readyToSell.value == "6 Months"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "6 Months",
                                style: TextStyle(
                                  color: readyToSell.value == "6 Months"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.h,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            readyToSell.value = "1 Year";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: readyToSell.value == "1 Year"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "1 Year",
                                style: TextStyle(
                                  color: readyToSell.value == "1 Year"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 6.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFFA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "Any mechanical issue or warning light?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xff515151), fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            warningLight.value = "Yes";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: warningLight.value == "Yes"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                  color: warningLight.value == "Yes"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            warningLight.value = "No";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: warningLight.value == "No"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                  color: warningLight.value == "No"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 6.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFFA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "Any accident claim?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xff515151), fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            accidentClaim.value = "Yes";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: accidentClaim.value == "Yes"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                  color: accidentClaim.value == "Yes"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            accidentClaim.value = "No";
                          },
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: accidentClaim.value == "No"
                                  ? Colors.green
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.3),
                                  offset: const Offset(0, 12),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                  color: accidentClaim.value == "No"
                                      ? Colors.white
                                      : const Color(0XFFBBBBBB),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => accidentClaim.value == "Yes"
                      ? Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xffA7B5BB)
                                            .withOpacity(0.3),
                                        blurRadius: 20,
                                        offset: const Offset(0, 8))
                                  ],
                                  color: Colors.white),
                              child: TextFormField(
                                cursorColor: MyColors.myAppThemeColor,

                                keyboardType: TextInputType.text,
                                maxLines: 2,
                                decoration: InputDecoration(
                                    hintText: "E.g Rear damage - \$2,000",
                                    hintStyle: const TextStyle(
                                      color: Color(0xffB1B1B1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent))),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 6.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFFA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "Anything you feel we should know about your car?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xff515151), fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffA7B5BB).withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 8))
                      ],
                      color: Colors.white),
                  child: TextFormField(
                    cursorColor: MyColors.myAppThemeColor,
                    keyboardType: TextInputType.text,
                    maxLines: 2,
                    decoration: InputDecoration(
                        hintText: "If Yes leave a note",
                        hintStyle: const TextStyle(
                          color: Color(0xffB1B1B1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.transparent))),
                  ),
                ),

                // const CustomRecordCondition1(
                //   text: "Any accident claim? ",
                //   text1: "Yes",
                //   text2: "No",
                // ),
                // const CustomRecordCondition1(
                //   text: "Any mechanical issue or warning light?",
                //   text1: "Yes",
                //   text2: "No",
                // ),
                // const CustomRecordCondition1(
                //   text: "How soon are you ready to sell?",
                //   text1: "Yes",
                //   text2: "No",
                // ),
                // const CustomRecordCondition1(
                //   text: "Anything you feel we should know about your car",
                //   text1: "Yes",
                //   text2: "No",
                // ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
