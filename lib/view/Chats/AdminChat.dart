import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';

class AdminChat extends StatefulWidget {
  const AdminChat({Key? key}) : super(key: key);

  @override
  State<AdminChat> createState() => _AdminChatState();
}

class _AdminChatState extends State<AdminChat> {
  List<dynamic> messagesListDemo = [

    const BubbleSpecialThree(
      text: 'Fine',
      color: MyColors.myAppThemeColor,
      tail: false,
      textStyle: TextStyle(color: Colors.white, fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'What\'s up',
      color: Color(0xFFE8E8EE),
      tail: false,
      isSender: false,
      textStyle: TextStyle(fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'Hi',
      color: MyColors.myAppThemeColor,
      tail: false,
      textStyle: TextStyle(color: Colors.white, fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'Hello',
      color: Color(0xFFE8E8EE),
      tail: false,
      isSender: false,
      textStyle: TextStyle(fontSize: 12),
    ),
  ];
  List<dynamic> messagesList = [];

  @override
  void initState() {
    super.initState();
    messagesList = messagesListDemo.reversed.toList(growable: true);
  }

  TextEditingController chatController = TextEditingController();
  final scrollController = ScrollController();

  void onFieldSubmitted() async {
    setState(() {
      messagesList.insert(
        0,
        BubbleSpecialThree(
          text: chatController.text,
          color: MyColors.myAppThemeColor,
          tail: false,
          textStyle: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    });

    // Move the scroll position to the bottom
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    chatController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                          const Text("Admin",
                              style: TextStyle(
                                  color: Color(0xff5A5A5A), fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // const Row(
        //   children: [
        //     Expanded(
        //       child: Divider(
        //         color: Color(0XFFEBEBEB),
        //         thickness: 1,
        //         height: 5,
        //       ),
        //     ),
        //     Text("Today 2:05 PM",
        //         style: TextStyle(
        //             color: Color(0XFF4E9C0B),
        //             fontSize: 10,
        //             fontWeight: FontWeight.w400)),
        //     Expanded(
        //       child: Divider(
        //         color: Color(0XFFEBEBEB),
        //         thickness: 1,
        //       ),
        //     ),
        //   ],
        // ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus(); // <-- Hide virtual keyboard
          },
          child: ListView.builder(
            controller: scrollController,
            reverse: true,
            itemCount: messagesList.length,
            itemBuilder: (context, index) {
              return messagesList[index];
            },
          ),
        )),
        Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: chatController,
                    cursorColor: MyColors.myAppThemeColor,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      fillColor: const Color(0xffEBEBEB),
                      hintText: 'Type a message ...',
                      hintStyle: const TextStyle(
                        color: Color(0xff777777),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                      contentPadding: EdgeInsets.only(left: 2.h),
                      suffixIcon: Transform.scale(
                        scale: 0.4,
                        child: InkWell(
                          onTap: () {
                            onFieldSubmitted();
                          },
                          child: SvgPicture.asset("assets/svg/send.svg"),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(color: Color(0xffEBEBEB)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(color: Color(0xffEBEBEB)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
