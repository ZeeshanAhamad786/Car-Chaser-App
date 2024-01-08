import 'package:car_chaser_app/widget/CustomRecordCondition1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widget/CommanAppBar.dart';
import 'ConditionAndRecord2.dart';
import 'condition&Record.dart';

class ConditionAndRecord1 extends StatefulWidget {
  const ConditionAndRecord1({Key? key}) : super(key: key);

  @override
  State<ConditionAndRecord1> createState() => _ConditionAndRecord1State();
}

class _ConditionAndRecord1State extends State<ConditionAndRecord1> {
  var haveSmoke = 'Not Select'.obs;
  var haveRims = 'Not Select'.obs;
  var haveTires = 'Not Select'.obs;
  var haveDrivable = 'Not Select'.obs;

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
                      const Text("Our top priority is to sell your car. ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Text(
                        "We are  eager to have a conversation with you.",
                        style: TextStyle(color: Color(0XFF515151), fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/repaircar.svg",
                  fit: BoxFit.contain,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height/1.4,
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
                Column(
                  children: [
                    SizedBox(
                      height: 3.h,
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
                        "Do you smoke in this vehicle?",
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
                                haveSmoke.value = "Yes";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveSmoke.value == "Yes"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveSmoke.value == "Yes"
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
                                haveSmoke.value = "No";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveSmoke.value == "No"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveSmoke.value == "No"
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
                        "Do you have original factory rims?",
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
                                haveRims.value = "Yes";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveRims.value == "Yes"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveRims.value == "Yes"
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
                                haveRims.value = "No";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveRims.value == "No"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveRims.value == "No"
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
                        "In the last 12 month have you replaced your all season tires?",
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
                                haveTires.value = "Yes";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveTires.value == "Yes"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveTires.value == "Yes"
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
                                haveTires.value = "No";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveTires.value == "No"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveTires.value == "No"
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
                        "Is your vehicle drivable?",
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
                                haveDrivable.value = "Yes";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveDrivable.value == "Yes"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveDrivable.value == "Yes"
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
                                haveDrivable.value = "No";
                              },
                              child: Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: haveDrivable.value == "No"
                                      ? Colors.green
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
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
                                      color: haveDrivable.value == "No"
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
                  ],
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
