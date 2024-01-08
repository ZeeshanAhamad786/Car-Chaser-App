
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';

class UploadVehicle1 extends StatefulWidget {
  const UploadVehicle1({Key? key}) : super(key: key);

  @override
  State<UploadVehicle1> createState() => _UploadVehicle1State();
}

class _UploadVehicle1State extends State<UploadVehicle1> {
  String? selectedModel;
  List<String> models = ['Model 1', 'Model 2', 'Model 3', 'Model 4'];

  String? selectedYear;
  List<String> years = ['2020', '2021', '2022', '2023'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 19.h,
            margin: EdgeInsets.only(right: 2.5.h, left: 2.3.h, top: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 1.5.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: const Color(0xffA7B5BB).withOpacity(0.5),
                  blurRadius: 30,
                  offset: const Offset(0, 20))
            ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "We are dedicated to finding the perfect buyer for your car, making the selling process easier than ever.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.5)),
                    Text(
                      "Share details about your vehicle to receive a solid offer within minutes",
                      style: TextStyle(color: Color(0XFF515151), fontSize: 9),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/svg/CARMEN.svg",
                fit: BoxFit.contain,
              ),
            ]),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                SizedBox(
                  height: 6.h,
                ),

                RichText(
                  text: const TextSpan(
                    text:  "     VIN",
                     style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                          text: " (Vehicle Identification Number )",
                          style: TextStyle(
                              color: Color(0xff515151), fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffA7B5BB).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 12))
                      ]),
                  child: TextFormField(
                    cursorColor: MyColors.myAppThemeColor,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                const Text(
                  "     Make",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffA7B5BB).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 12))
                      ]),
                  child: TextFormField(
                    cursorColor: MyColors.myAppThemeColor,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "     Model",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Text(
                      "   Year",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        padding: EdgeInsets.only(left: 2.h, right: 2.h),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: const Offset(0, 12))
                            ],
                            color: Colors.white),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Text(
                              'Model',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDFDFDF),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            items: models
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedModel,
                            onChanged: (String? value) {
                              setState(() {
                                selectedModel = value!;
                              });
                            },
                            iconStyleData: IconStyleData(
                              icon: SvgPicture.asset("assets/svg/DROPDOWN.svg"),
                              iconSize: 14,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
                                      blurRadius: 6,
                                      offset: const Offset(0, 3))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    Expanded(
                      child: Container(
                        height: 48,
                        padding: EdgeInsets.only(left: 1.h, right: 2.h),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: const Offset(0, 12))
                            ],
                            color: Colors.white),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Text(
                              'Year',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDFDFDF),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            items: years
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedYear,
                            onChanged: (String? value) {
                              setState(() {
                                selectedYear = value!;
                              });
                            },
                            iconStyleData: IconStyleData(
                              icon: SvgPicture.asset("assets/svg/DROPDOWN.svg"),
                              iconSize: 14,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xffA7B5BB)
                                          .withOpacity(0.3),
                                      blurRadius: 6,
                                      offset: const Offset(0, 3))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                    ),






                    // Expanded(
                    //   child: InkWell(
                    //     onTap: () {
                    //       showModelPopupMenu(context);
                    //     },
                    //     child: Container(
                    //         height: 48,
                    //         decoration: BoxDecoration(
                    //             borderRadius: const BorderRadius.only(
                    //                 topLeft: Radius.circular(30),
                    //                 bottomLeft: Radius.circular(30)),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                   color: const Color(0xffA7B5BB)
                    //                       .withOpacity(0.5),
                    //                   blurRadius: 20,
                    //                   offset: const Offset(0, 12))
                    //             ],
                    //             color: Colors.white),
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             SizedBox(width: 2.h),
                    //             Expanded(child: Text(selectedModel)),
                    //             InkWell(
                    //                 onTap: () {
                    //                   showModelPopupMenu(context);
                    //                 },
                    //                 child: SvgPicture.asset(
                    //                     "assets/svg/DROPDOWN.svg")),
                    //             SizedBox(width: 2.h),
                    //           ],
                    //         )),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: InkWell(
                    //     onTap: () {
                    //       showYearPopupMenu(context);
                    //     },
                    //     child: Container(
                    //         height: 48,
                    //         decoration: BoxDecoration(
                    //             borderRadius: const BorderRadius.only(
                    //                 topRight: Radius.circular(30),
                    //                 bottomRight: Radius.circular(30)),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                   color: const Color(0xffA7B5BB)
                    //                       .withOpacity(0.5),
                    //                   blurRadius: 20,
                    //                   offset: const Offset(0, 12))
                    //             ],
                    //             color: Colors.white),
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             SizedBox(width: 2.h),
                    //             Expanded(
                    //               child: Text(selectedYear),
                    //             ),
                    //             SvgPicture.asset("assets/svg/DROPDOWN.svg"),
                    //             SizedBox(width: 2.h),
                    //           ],
                    //         )),
                  ],
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }

// void showModelPopupMenu(BuildContext context) async {
//   String? result = await showMenu(
//     context: context,
//     position: const RelativeRect.fromLTRB(20, 300, 0, 0),
//     items: models.map((model) {
//       return PopupMenuItem<String>(
//         value: model,
//         child: Text(model),
//       );
//     }).toList(),
//   );
//
//   if (result != null) {
//     setState(() {
//       selectedModel = result;
//     });
//   }
// }
//
// void showYearPopupMenu(BuildContext context) async {
//   String? result = await showMenu(
//     context: context,
//     position: const RelativeRect.fromLTRB(20, 300, 0, 0),
//     items: years.map((year) {
//       return PopupMenuItem<String>(
//         value: year,
//         child: Text(year),
//       );
//     }).toList(),
//   );
//
//   if (result != null) {
//     setState(() {
//       selectedYear = result;
//     });
//   }
// }
}
