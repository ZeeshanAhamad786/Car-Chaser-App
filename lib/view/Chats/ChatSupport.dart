import 'package:car_chaser_app/view/Chats/AdminChat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widget/customButton.dart';

class ChatSupport extends StatelessWidget {
  const ChatSupport({Key? key}) : super(key: key);

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
                          Text("Chat",
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
        SizedBox(
          height: 6.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.h),
          child: Container(
            height: 55.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xffA7B5BB).withOpacity(0.5),
                      blurRadius: 30,
                      offset: const Offset(0, 10))
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              SvgPicture.asset("assets/svg/chatimage.svg"),
              const Text(
                "Live Chat Support",
                style: TextStyle(
                    color: Color(0xff515151),
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
              SizedBox(height: 0.3.h,),
              const Text(
                "Live chat support is a way for customers to get help through \ninstant messaging platforms.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 2.h,),
              CustomElevatedButton(buttonText: 'Chat Support', textColor: Colors.white,
                buttonColor: const Color(0xffF1AD3D),
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>const AdminChat())); }, ),
              const SizedBox(height: 10,width: 10,)
            ]),
          ),
        )
      ]),
    );
  }
}
