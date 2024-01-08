import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widget/widgets.dart';

class CarDetailsInfo extends StatefulWidget {
  const CarDetailsInfo({Key? key}) : super(key: key);

  @override
  State<CarDetailsInfo> createState() => _CarDetailsFieldsState();
}

class _CarDetailsFieldsState extends State<CarDetailsInfo> {
  int _currentIndex = 0;
  final List<String> imageList = [
    'assets/png/previouscar1.png',
    'assets/png/previouscar2.png',
    'assets/png/RECENTCAR.png',
    'assets/png/RECENTCAR2.png',
  ];
  // final List<String> imageList = [
  //   'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg',
  //   'https://c4.wallpaperflare.com/wallpaper/932/308/875/toyota-toyota-2015-land-cruiser-wallpaper-preview.jpg',
  //   'https://c4.wallpaperflare.com/wallpaper/921/655/739/toyota-land-cruiser-prado-japanese-car-mid-size-wallpaper-preview.jpg',
  //   'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg',
  //   'https://c4.wallpaperflare.com/wallpaper/932/308/875/toyota-toyota-2015-land-cruiser-wallpaper-preview.jpg',
  //   'https://c4.wallpaperflare.com/wallpaper/921/655/739/toyota-land-cruiser-prado-japanese-car-mid-size-wallpaper-preview.jpg',
  // ];

  final List<String> additionalFeatures = [
    '2 sets of tire',
    'Roof rack',
    'Window tint',
    'Remote starter',
    'Aftermarket exhaust',
    'Aftermarket stereo',
    'Aftermarket rims',
    'Aftermarket spoiler',
    'Dents',
    'Scratches',
    'Paint Chips',
    'Any rust?',
    'Any Cracked bodywork',
    'No exterior damage',
    'Chipped it cracked',
  ];

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
                          "Car details",
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
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: const Column(
                  children: [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Color(0xff4C4C4C),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "Example@gmail.com",
                      style: TextStyle(
                          color: Color(0xff777777),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Color(0xff777777),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CarouselSlider(
              items: imageList.map((url) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:
                  // Image.network(
                  //   url,
                  //   fit: BoxFit.cover,
                  // ),
                  Image.asset(
                    url,
                    fit: BoxFit.contain,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.linear,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomIndicator(
                itemCount: imageList.length, currentIndex: _currentIndex),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
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
                  const Text(
                    "Car Details",
                    style: TextStyle(
                        color: Color(0XFFF1AD3D),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const CustomInfoText(
                    label: "Model",
                    text: "Volkswagen Altas Exceline",
                  ),
                  const CustomInfoText(
                    label: "Year",
                    text: "2009",
                  ),
                  const CustomInfoText(
                    label: "VIN",
                    text: "12566896",
                  ),
                  const CustomInfoText(
                    label: "Make",
                    text: "Answer",
                  ),
                  const CustomInfoText(
                    label: "Trim",
                    text: "Answer",
                  ),
                  const CustomInfoText(
                    label: "Color",
                    text: "Sliver",
                  ),
                  const CustomInfoText(
                    label: "Mileage/Odometer",
                    text: "97951km",
                  ),
                  const CustomInfoText(
                    label: "Keys",
                    text: "3",
                    isDivider: false,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  const Text(
                    "Additional Features ",
                    style: TextStyle(
                        color: Color(0XFFF1AD3D),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 20,
                            crossAxisCount: 2,
                            mainAxisSpacing: 5),
                    itemCount: additionalFeatures.length,
                    itemBuilder: (context, index) {
                      return Text(
                        additionalFeatures[index].toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF3D3D3D)),
                      );
                    },
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  const Text(
                    "Condition & Record",
                    style: TextStyle(
                        color: Color(0XFFF1AD3D),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Do you smoke in this vehicle?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Do you have original factory rims?  ",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "In the last 12 month have you replaced your all season tires? ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Is your vehicle drivable?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Any accident claim? ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes, Rear damage - \$2,000",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Any mechanical issue or warning light?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "How soon are you ready to sell?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Anything you feel we should know about your car?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF3D3D3D)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Text(
                    "Details answer ",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3D3D3D)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
