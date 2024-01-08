import 'package:car_chaser_app/view/Home/car_details_screen.dart';
import 'package:car_chaser_app/view/Home/notification_screen.dart';
import 'package:car_chaser_app/view/Home/search_screen.dart';
import 'package:car_chaser_app/view/Home/view_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../../utils/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Car Chaser",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                              InkWell(
                                onTap: () =>
                                    Get.to(() => const NotificationScreen()),
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
                        readOnly: true,
                        onTap: () => Get.to(() => const SearchScreen()),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Recent Upload",
                        style: TextStyle(
                            color: Color(0xff515151),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      InkWell(
                        onTap: () =>
                            Get.to(() => const ViewAllScreen(title: 'Recent')),
                        child: const Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xff4E9C0B),
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                                recentUploadsData[index]
                                                    ['title'],
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
                                              //       ['details'],
                                              //   maxLines: 2,
                                              //   overflow:
                                              //       TextOverflow.ellipsis,
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
                                            margin:
                                                EdgeInsets.only(bottom: 1.h),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Previous Cars",
                        style: TextStyle(
                            color: Color(0xff515151),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      InkWell(
                        onTap: () => Get.to(
                            () => const ViewAllScreen(title: 'Previous Cars')),
                        child: const Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xff4E9C0B),
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 23.h,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1.h,
                      mainAxisSpacing: 1.h,
                    ),
                    itemCount: previousCarsData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Get.to(() => const CarDetailsInfo()),
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child:
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //       boxShadow: [
                                    //         BoxShadow(
                                    //           color: Colors.grey.withOpacity(0.3),
                                    //           // Shadow color
                                    //           spreadRadius: 5,
                                    //           // Spread radius
                                    //           blurRadius: 10,
                                    //           // Blur radius
                                    //           offset: const Offset(0,
                                    //               3), // Offset (vertical, horizontal)
                                    //         ),
                                    //       ],
                                    //       color: Colors.white,
                                    //       borderRadius: const BorderRadius.only(
                                    //           topRight: Radius.circular(25),
                                    //           topLeft: Radius.circular(25),
                                    //           bottomLeft: Radius.circular(0),
                                    //           bottomRight: Radius.circular(0)),
                                    //       image: DecorationImage(
                                    //           image: NetworkImage(
                                    //               previousCarsData[index]['image']),
                                    //           fit: BoxFit.fill)),
                                    // ),
                                    Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          // Shadow color
                                          spreadRadius: 5,
                                          // Spread radius
                                          blurRadius: 10,
                                          // Blur radius
                                          offset: const Offset(0,
                                              3), // Offset (vertical, horizontal)
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(25),
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              previousCarsData[index]['image']),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 1.5.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        // Shadow color
                                        spreadRadius: 5,
                                        // Spread radius
                                        blurRadius: 10,
                                        // Blur radius
                                        offset: const Offset(0,
                                            3), // Offset (vertical, horizontal)
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.vertical(
                                        bottom: Radius.circular(25)),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 1.h,
                                      ),
                                      Expanded(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  previousCarsData[index]
                                                      ["title"],
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xff707070))),
                                              Text(
                                                  previousCarsData[index]
                                                      ["year"],
                                                  style: const TextStyle(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xff707070))),
                                            ]),
                                      ),
                                      SizedBox(
                                        width: 1.h,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 3.5.h,
                                        width: 8.h,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                // Shadow color
                                                spreadRadius: 1,
                                                // Spread radius
                                                blurRadius: 10,
                                                // Blur radius
                                                offset: const Offset(0,
                                                    10), // Offset (vertical, horizontal)
                                              ),
                                            ],
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30),
                                                    bottomLeft:
                                                        Radius.circular(30)),
                                            color: MyColors.myAppThemeColor),
                                        child: Text(
                                            '${previousCarsData[index]['kilometer']}km',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
