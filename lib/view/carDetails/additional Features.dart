import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AdditionalFeatures extends StatefulWidget {
  const AdditionalFeatures({Key? key}) : super(key: key);

  @override
  State<AdditionalFeatures> createState() => _AdditionalFeaturesState();
}

class _AdditionalFeaturesState extends State<AdditionalFeatures> {
  List listOfYourVehicle = [
    '2 sets of tire',
    'Roof rack',
    'Window tint',
    'Remote starter',
    'Aftermarket exhaust',
    'Aftermarket stereo',
    'Aftermarket rims',
    'Aftermarket spoiler',
  ];

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
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Tell us more about your vehicle",
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
                  "assets/svg/additionalcar.svg",
                  fit: BoxFit.contain,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
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
                  height: 6.h,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: listOfYourVehicle.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 5.h),
                  itemBuilder: (context, index) {
                    var isChecked = false.obs;

                    return InkWell(
                      onTap: () {
                        isChecked.value = !isChecked.value;
                        log(listOfYourVehicle[index].toString());
                      },
                      child: Obx(
                        () => Row(
                          children: [
                            Container(
                              height: 4.5.h,
                              padding: EdgeInsets.symmetric(horizontal: 0.8.h),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: isChecked.value
                                        ? Colors.green.withOpacity(0.5)
                                        : const Color(0xffA7B5BB)
                                            .withOpacity(0.5),
                                    blurRadius: 15,
                                    offset: const Offset(0, 8),
                                  )
                                ],
                                color: isChecked.value
                                    ? Colors.green
                                    : Colors.white,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Icon(Icons.check,
                                  color: Colors.white, size: 2.h),
                            ),
                            SizedBox(
                              width: 0.5.h,
                            ),
                            Expanded(
                              child: Container(
                                height: 4.5.h,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: isChecked.value
                                          ? Colors.green.withOpacity(0.5)
                                          : const Color(0xffA7B5BB)
                                              .withOpacity(0.5),
                                      offset: const Offset(0, 8),
                                      blurRadius: 15,
                                    )
                                  ],
                                  color: isChecked.value
                                      ? Colors.green
                                      : Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  '   ${listOfYourVehicle[index]}',
                                  style: TextStyle(
                                    color: isChecked.value
                                        ? Colors.white
                                        : const Color(0XFF515151),
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
