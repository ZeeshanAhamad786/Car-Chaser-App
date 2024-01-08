import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                    const Text(
                      "Notification",
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
        SizedBox(
          height: 4.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Color(0XFF1F1F1F),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 5.5.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 4)
                    ]),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.h),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("You got a new message",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),

                      Text("5:30 Pm",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 5.5.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 4)
                    ]),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.h),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("You got a new message",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),

                      Text("5:30 Pm",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "yesterday",
                  style: TextStyle(
                      color: Color(0XFF1F1F1F),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 5.5.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 4)
                    ]),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.h),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("You got a new message",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),

                      Text("5:30 Pm",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303030))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}