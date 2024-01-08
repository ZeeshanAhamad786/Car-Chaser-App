import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../../utils/data/data.dart';
import 'car_details_screen.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 16.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.h,
                    left: 2.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          "assets/svg/Arrow - Left Circle.svg",
                        ),
                      ),
                      SizedBox(
                        width: 2.5.h,
                      ),
                      Text(
                        widget.title.toString(),
                        style: const TextStyle(
                          color: Color(0xff5A5A5A),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          widget.title.toString() != 'Previous Cars'
              ? ListView.builder(
                  padding: EdgeInsets.only(right: 2.h, left: 2.h, top: 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: recentUploadsData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => Get.to(() => const CarDetailsInfo()),
                          child: Container(
                            height: 16.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  // Shadow color
                                  spreadRadius: 5,
                                  // Spread radius
                                  blurRadius: 10,
                                  // Blur radius
                                  offset: const Offset(
                                      0, 3), // Offset (vertical, horizontal)
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft: Radius.circular(25)),
                                  child:
                                  // Image.network(
                                  //   recentUploadsData[index]['image'],
                                  //   height: double.infinity,
                                  //   width: 22.h,
                                  //   fit: BoxFit.fill,
                                  // ),
                                  Image.asset(
                                    recentUploadsData[index]['image'],
                                    height: double.infinity,
                                    width: 22.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.h,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 1.5.h, bottom: 3.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 2.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                recentUploadsData[index]['title'],
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0XFF707070),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.3.h,
                                              ),
                                              Text(
                                                recentUploadsData[index]['year'],
                                                style: const TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0XFF707070),
                                                ),
                                              ),
                                              // SizedBox(
                                              //   height: 0.3.h,
                                              // ),
                                              // Text(
                                              //   recentUploadsData[index]
                                              //       ['details'],
                                              //   maxLines: 2,
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: const TextStyle(
                                              //     fontSize: 8,
                                              //     fontWeight: FontWeight.w400,
                                              //     color: Color(0XFF515151),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.5.h),
                                            width: 15.h,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    // Shadow color
                                                    spreadRadius: 1,
                                                    // Spread radius
                                                    blurRadius: 15,
                                                    // Blur radius
                                                    offset: const Offset(0,
                                                        10), // Offset (vertical, horizontal)
                                                  ),
                                                ],
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(25),
                                                        bottomLeft:
                                                            Radius.circular(25)),
                                                color: MyColors.myAppThemeColor),
                                            child: Text(
                                                '${recentUploadsData[index]['kilometer']}km',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        )
                      ],
                    );
                  },
                )
              : ListView.builder(
                  padding: EdgeInsets.only(right: 2.h, left: 2.h, top: 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: previousCarsData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => Get.to(() => const CarDetailsInfo()),
                          child: Container(
                            height: 18.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  // Shadow color
                                  spreadRadius: 5,
                                  // Spread radius
                                  blurRadius: 10,
                                  // Blur radius
                                  offset: const Offset(
                                      0, 3), // Offset (vertical, horizontal)
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft: Radius.circular(25)),
                                  child:
                                  // Image.network(
                                  //   previousCarsData[index]['image'],
                                  //   height: double.infinity,
                                  //   width: 22.h,
                                  //   fit: BoxFit.fill,
                                  // ),
                                  Image.asset(
                                    previousCarsData[index]['image'],
                                    height: double.infinity,
                                    width: 22.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.h,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 1.5.h, bottom: 3.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 2.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                previousCarsData[index]['title'],
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0XFF707070),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.3.h,
                                              ),
                                              Text(
                                                previousCarsData[index]['year'],
                                                style: const TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0XFF707070),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.3.h,
                                              ),
                                              const Text(
                                                'Share details to receive a solid offer within minutesShare details ato receive as link.',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0XFF515151),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.5.h),
                                            width: 15.h,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    // Shadow color
                                                    spreadRadius: 1,
                                                    // Spread radius
                                                    blurRadius: 15,
                                                    // Blur radius
                                                    offset: const Offset(0,
                                                        10), // Offset (vertical, horizontal)
                                                  ),
                                                ],
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(25),
                                                        bottomLeft:
                                                            Radius.circular(25)),
                                                color: MyColors.myAppThemeColor),
                                            child: Text(
                                                '${previousCarsData[index]['kilometer']}km',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        )
                      ],
                    );
                  },
                ),
        ]),
      ),
    );
  }
}
