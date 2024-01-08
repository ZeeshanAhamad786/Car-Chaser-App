import 'package:car_chaser_app/view/bottomNavigationBar/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../Home/notification_screen.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 18.5.h,
          width: double.infinity,
          color: Colors.transparent,
          child: Column(
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
                      offset:
                          const Offset(0, 3), // Offset (vertical, horizontal)
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.h,
                        left: 2.h,
                        right: 2.h,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Setting",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                          // Container(
                          //   height: 38,
                          //   width: 38,
                          //   decoration: BoxDecoration(
                          //       color: Colors.white,
                          //       boxShadow: [
                          //         BoxShadow(
                          //             color: Colors.grey.withOpacity(0.3),
                          //             blurRadius: 2)
                          //       ],
                          //       borderRadius: BorderRadius.circular(30)),
                          //   child: Center(
                          //       child: SvgPicture.asset(
                          //           "assets/svg/Notification.svg")),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () => Get.to(() => const NotificationScreen()),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text("Notifications",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
              ),
              const Divider(
                color: Color(0XFFDEDEDE),
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Get.snackbar("Success", 'Logout Successfully.',
                      colorText: Colors.white,
                      backgroundColor: MyColors.myAppThemeColor);
                  Get.offAll(
                      () => const MyBottomNavigationBar(selectedIndex: 0));
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Text("Logout",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
