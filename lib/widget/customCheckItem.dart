import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomCheckItem extends StatefulWidget {
  final String text1;
  final String text2;
  final String? text3;

  const CustomCheckItem({required this.text1, required this.text2, this.text3});

  @override
  State<CustomCheckItem> createState() => _CustomCheckItemState();
}

class _CustomCheckItemState extends State<CustomCheckItem> {
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isClicked1 = !isClicked1;
            });
          },
          child: Container(
            height: 6.h,
            width: 5.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: isClicked1
                      ? Colors.green.withOpacity(0.5)
                      : const Color(0xffA7B5BB).withOpacity(0.5),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                )
              ],
              color: isClicked1 ? Colors.green : Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: const Icon(Icons.check, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 0.5.h,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isClicked1 = !isClicked1;
              });
            },
            child: Container(
              height: 6.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: isClicked1
                        ? Colors.green.withOpacity(0.5)
                        : const Color(0xffA7B5BB).withOpacity(0.5),
                    offset: const Offset(0, 8),
                    blurRadius: 15,
                  )
                ],
                color: isClicked1 ? Colors.green : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  widget.text1,
                  style: TextStyle(
                    color: isClicked1 ? Colors.white : const Color(0XFF515151),
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.h,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isClicked2 = !isClicked2;
            });
          },
          child: Container(
            height: 6.h,
            width: 5.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: isClicked2
                      ? Colors.green.withOpacity(0.5)
                      : const Color(0xffA7B5BB).withOpacity(0.5),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                )
              ],
              color: isClicked2 ? Colors.green : Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: const Icon(Icons.check, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 0.5.h,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isClicked2 = !isClicked2;
              });
            },
            child: Container(
              height: 6.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: isClicked2
                        ? Colors.green.withOpacity(0.5)
                        : const Color(0xffA7B5BB).withOpacity(0.5),
                    offset: const Offset(0, 8),
                    blurRadius: 15,
                  )
                ],
                color: isClicked2 ? Colors.green : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  widget.text2,
                  style: TextStyle(
                    color: isClicked2 ? Colors.white : const Color(0XFF515151),
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (widget.text3 != null && widget.text3!.isNotEmpty)
          SizedBox(
            width: 2.h,
          ),
        if (widget.text3 != null && widget.text3!.isNotEmpty)
          InkWell(
            onTap: () {
              setState(() {
                isClicked3 = !isClicked3;
              });
            },
            child: Container(
              height: 6.h,
              width: 5.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: isClicked3
                        ? Colors.green.withOpacity(0.5)
                        : const Color(0xffA7B5BB).withOpacity(0.5),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
                color: isClicked3 ? Colors.green : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: const Icon(Icons.check, color: Colors.white),
            ),
          ),
        if (widget.text3 != null && widget.text3!.isNotEmpty)
          SizedBox(
            width: 0.5.h,
          ),
        if (widget.text3 != null && widget.text3!.isNotEmpty)
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isClicked3 = !isClicked3;
                });
              },
              child: Container(
                height: 6.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: isClicked3
                          ? Colors.green.withOpacity(0.5)
                          : const Color(0xffA7B5BB).withOpacity(0.5),
                      offset: const Offset(0, 8),
                      blurRadius: 15,
                    ),
                  ],
                  color: isClicked3 ? Colors.green : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.text3 ?? "", // Use text3 if not null
                    style: TextStyle(
                      color: isClicked3 ? Colors.white : const Color(0XFF515151),
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
