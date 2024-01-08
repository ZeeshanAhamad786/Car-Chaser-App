import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomRecordCondition1 extends StatefulWidget {
  final String? text;
  final String? text1;
  final String? text2;

  const CustomRecordCondition1({
    Key? key,
    this.text,
    this.text1,
    this.text2,
  }) : super(key: key);

  @override
  _CustomRecordCondition1State createState() => _CustomRecordCondition1State();
}

class _CustomRecordCondition1State extends State<CustomRecordCondition1> {
  bool isText1Selected = false;
  bool isText2Selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        Container(
          height: 6.h,
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0XFFA7B5BB).withOpacity(0.3),
                offset: const Offset(0, 12),
                blurRadius: 20,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(
            widget.text ?? "",
            textAlign:TextAlign.center,
            style:  TextStyle(color: const Color(0xff515151), fontSize: 14.sp),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isText1Selected = true;
                    isText2Selected = false;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: isText1Selected ? Colors.green : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.text1 ?? "",
                      style: TextStyle(
                        color: isText1Selected ? Colors.white : const Color(0XFFBBBBBB),
                        fontSize: 14.sp ,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isText1Selected = false;
                    isText2Selected = true;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: isText2Selected ? Colors.green : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffA7B5BB).withOpacity(0.3),
                        offset: const Offset(0, 12),
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.text2 ?? "",
                      style: TextStyle(
                        color: isText2Selected ? Colors.white : const Color(0XFFBBBBBB),
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
