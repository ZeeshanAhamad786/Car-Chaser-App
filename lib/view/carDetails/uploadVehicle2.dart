import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import 'additional Features.dart';

class UploadVehicle2 extends StatefulWidget {
  const UploadVehicle2({Key? key}) : super(key: key);

  @override
  State<UploadVehicle2> createState() => _UploadVehicle2State();
}

class _UploadVehicle2State extends State<UploadVehicle2> {
  String? selectedColor;
  List<String> colorsList = ['white', 'black', 'silver', 'transparent'];

  String? selectedKey;
  List<String> keysList = ['1', '2', '3', '4'];
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
                            TextStyle(color: Color(0XFF515151), fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/PHONECAR.svg",
                  fit: BoxFit.contain,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.2,
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
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: const Text(
                        "Mileage/Odometer",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 50,
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
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: const Text(
                        "Color",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 2.h,right: 3.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffA7B5BB).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 12))
                      ]),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: const Text(
                        'Color',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffDFDFDF),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      items: colorsList
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
                      value: selectedColor,
                      onChanged: (String? value) {
                        setState(() {
                          selectedColor = value!;
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

                // Container(
                //     height: 48,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(30),
                //         boxShadow: [
                //           BoxShadow(
                //               color: const Color(0xffA7B5BB)
                //                   .withOpacity(0.5),
                //               blurRadius: 20,
                //               offset: const Offset(0, 12))
                //         ],
                //         color: Colors.white),
                //  child: InkWell(onTap:(){
                //    showModelPopupMenu(context);
                //  } ,
                //    child: Row(
                //      children: [SizedBox(width: 2.h),
                //        Expanded(child: Text(selectedColor),
                //            ),
                //        SvgPicture.asset("assets/svg/DROPDOWN.svg"),
                //        SizedBox(width: 2.h,)
                //      ],
                //    ),
                //  ),
                // ),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: const Text(
                        "Keys",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 50,

                  padding: EdgeInsets.only(left: 2.h,right: 3.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffA7B5BB).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 12))
                      ]),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: const Text(
                        'Key',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffDFDFDF),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      items: keysList
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
                      value: selectedKey,
                      onChanged: (String? value) {
                        setState(() {
                          selectedKey = value!;
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

                // Container(
                //   height: 48,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(30),
                //       boxShadow: [
                //         BoxShadow(
                //             color: const Color(0xffA7B5BB)
                //                 .withOpacity(0.5),
                //             blurRadius: 20,
                //             offset: const Offset(0, 12))
                //       ],
                //       color: Colors.white),
                //   child: InkWell(onTap: () {
                //     showYearPopupMenu(context);
                //   },
                //     child: Row(
                //       children: [SizedBox(width: 2.h),
                //         Expanded(child: Text(selectedKey),
                //         ),
                //         SvgPicture.asset("assets/svg/DROPDOWN.svg"),
                //         SizedBox(width: 2.h,)
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: const Text(
                        "Trim",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 50,

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
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
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
//     position: const RelativeRect.fromLTRB(20, 400, 0, 0),
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
//       selectedColor = result;
//     });
//   }
// }
//
// void showYearPopupMenu(BuildContext context) async {
//   String? result = await showMenu(
//     context: context,
//     position: const RelativeRect.fromLTRB(20, 400, 0, 0),
//     items: keys.map((year) {
//       return PopupMenuItem<String>(
//         value: year,
//         child: Text(year),
//       );
//     }).toList(),
//   );
//
//   if (result != null) {
//     setState(() {
//       selectedKey = result;
//     });
//   }
// }
}
