import 'package:car_chaser_app/view/Home/notification_screen.dart';
import 'package:car_chaser_app/view/carDetails/carDetailsFields.dart';
import 'package:car_chaser_app/view/carDetails/stepper_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';

class AddCarDetails extends StatelessWidget {
  const AddCarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: 18.5.h,
              width: double.infinity,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(
                              0, 3), // Offset (vertical, horizontal)
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.h,
                            left: 2.h,
                            right: 2.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Car Chaser",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                              InkWell(
                                onTap: () => Get.to(()=>const NotificationScreen()),
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            blurRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: SvgPicture.asset(
                                          "assets/svg/Notification.svg")),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   bottom: 0,
                  //   right: 0,
                  //   left: 0,
                  //   child: Container(
                  //     height: 5.5.h,
                  //     margin: EdgeInsets.symmetric(horizontal: 4.h),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(30),
                  //         boxShadow: [
                  //           BoxShadow(
                  //               color: const Color(0xffA7B5BB).withOpacity(0.5),
                  //               blurRadius: 15,
                  //               offset: const Offset(0, 5))
                  //         ],
                  //         color: Colors.white),
                  //     child: TextFormField(
                  //       obscureText: true,
                  //       decoration: InputDecoration(
                  //           focusedBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //               borderSide: const BorderSide(
                  //                   color: Colors.transparent)),
                  //           border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //               borderSide: const BorderSide(
                  //                   color: Colors.transparent)),
                  //           contentPadding: EdgeInsets.zero,
                  //           prefixIcon: Transform.scale(
                  //               scale: 0.4,
                  //               child:
                  //                   SvgPicture.asset("assets/svg/search.svg")),
                  //           isDense: true,
                  //           enabledBorder: OutlineInputBorder(
                  //             borderSide:
                  //                 const BorderSide(color: Colors.transparent),
                  //             borderRadius: BorderRadius.circular(30),
                  //           ),
                  //           suffixIcon: Container(
                  //             width: 8.h,
                  //             margin: EdgeInsets.all(0.4.h),
                  //             alignment: Alignment.center,
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(30),
                  //                 color: MyColors.myAppThemeColor),
                  //             child: Text("Search",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                     color: Colors.white, fontSize: 14.sp)),
                  //           ),
                  //           hintText: "Search here",
                  //           hintStyle: TextStyle(
                  //               color: const Color(0xffDFDFDF),
                  //               fontSize: 14.sp)),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 3.h),
              margin: EdgeInsets.only(right: 4.h, left: 4.h, top: 6.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.px)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 7,
                        spreadRadius: 2)
                  ]),
              child: Column(children: [
                SizedBox(
                  height: 4.h,
                ),
                SvgPicture.asset("assets/svg/mencar.svg"),
                SizedBox(
                  height: 2.h,
                ),
                const Center(
                    child: Text(
                  "Lead to automotive excellence",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 0.5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: const Text(
                    "According to the actual needs, you can create different type of question You can also select the questions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0XFF515151), fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(190, 45),
                        backgroundColor: MyColors.myAppThemeColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const StepperScreen()));
                    },
                    child: const Text(
                      "Add Car Detail",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
          ],
        ));
  }
}
