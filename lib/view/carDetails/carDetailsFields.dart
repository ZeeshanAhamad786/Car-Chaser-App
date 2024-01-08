import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widget/customCarTextFields.dart';

class CarDetailsFields extends StatefulWidget {
  const CarDetailsFields({Key? key}) : super(key: key);

  @override
  State<CarDetailsFields> createState() => _CarDetailsFieldsState();
}

class _CarDetailsFieldsState extends State<CarDetailsFields> {
  final List<String> featureTitles = ["2 sets of tire", "Roof rack"];
  final List<String> featureValues = ["yes", "no"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        const Text(
                          "Car full details",
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
              height: 2.h,
            ),
            SvgPicture.asset(
              "assets/svg/signincar.svg",
              fit: BoxFit.fitWidth,
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Volkswagen Altas Exceline",
                          style: TextStyle(
                              color: Color(0xff4E9C0B),
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                      Text("97, 951km",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff3D3D3D))),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Align(alignment: Alignment.centerLeft,
                    child: Text(
                      "Car Details",
                      style: TextStyle(
                          color: Color(0XFFF1AD3D),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '2009', label: 'zeeshan',),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '12566896', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: 'Answer', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: 'Answer', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: 'Sliver', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '97951km', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '97951km', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '97951km', label: 'zeeshan',),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: CustomTextField(hintText: '97951km', label: 'zeeshan',),
            ),
            SizedBox(height: 4.h,),
            Align(alignment: Alignment.centerLeft,
              child: Text(
                "Additional Features ",
                style: TextStyle(
                    color: Color(0XFFF1AD3D),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
           Text("data"),
           Text("data")
          ],
        ),
      ),
    );
  }
}
