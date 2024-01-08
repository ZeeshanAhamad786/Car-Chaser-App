import 'package:car_chaser_app/view/Home/car_details_screen.dart';
import 'package:car_chaser_app/view/Home/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../../utils/data/data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // <-- Hide virtual keyboard
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        body: SingleChildScrollView(
          child: Column(
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
                                const Text(
                                  "Search Cars",
                                  style: TextStyle(
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
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 5.5.h,
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xffA7B5BB).withOpacity(0.5),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5))
                            ],
                            color: Colors.white),
                        child: TextFormField(
                          cursorColor: MyColors.myAppThemeColor,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)),
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Transform.scale(
                                  scale: 0.4,
                                  child:
                                      SvgPicture.asset("assets/svg/search.svg")),
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: Container(
                                width: 8.h,
                                margin: EdgeInsets.all(0.4.h),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: MyColors.myAppThemeColor),
                                child: Text("Search",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp)),
                              ),
                              hintText: "Search here",
                              hintStyle: TextStyle(
                                  color: const Color(0xffDFDFDF),
                                  fontSize: 14.sp)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus(); // <-- Hide virtual keyboard
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.zero,
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
                                      // ClipRRect(
                                      //   borderRadius: const BorderRadius.only(
                                      //       topLeft: Radius.circular(25),
                                      //       bottomLeft: Radius.circular(25)),
                                      //   child: Image.network(
                                      //     recentUploadsData[index]['image'],
                                      //     height: double.infinity,
                                      //     width: 22.h,
                                      //     fit: BoxFit.fill,
                                      //   ),
                                      // ),
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            bottomLeft: Radius.circular(25)),
                                        child: Image.asset(
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
                                          padding: EdgeInsets.only(
                                              top: 1.5.h, bottom: 3.h),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 2.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      recentUploadsData[index]
                                                          ['title'],
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                      recentUploadsData[index]
                                                          ['year'],
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
                                                    //   ['details'],
                                                    //   maxLines: 2,
                                                    //   overflow:
                                                    //   TextOverflow.ellipsis,
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
                                                                  Radius.circular(
                                                                      25),
                                                              bottomLeft:
                                                                  Radius.circular(
                                                                      25)),
                                                      color:
                                                          MyColors.myAppThemeColor),
                                                  child: Text(
                                                      '${recentUploadsData[index]['kilometer']}km',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400)),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
