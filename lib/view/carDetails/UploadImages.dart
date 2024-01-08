import 'package:car_chaser_app/controller/car_controller/upload_car_image_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widget/widgets.dart';

class UploadImages extends StatefulWidget {
  const UploadImages({Key? key}) : super(key: key);

  @override
  State<UploadImages> createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages> {
  UploadCarImageController uploadCarImageController =
      Get.put(UploadCarImageController(), tag: 'uploadCarImageController');

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
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Now is the perfect moment to sell your vehicle.No time!",
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
                  "assets/svg/UploadImage.svg",
                  fit: BoxFit.contain,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                boxShadow: const [BoxShadow(color: Colors.white)],
                borderRadius: BorderRadius.circular(36)),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Obx(
                  () => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: InkWell(
                      onTap: () => uploadCarImageController
                                  .listOfSelectedImage.length >
                              5
                          ? customScaffoldMessenger(
                              context, 'You have to upload maximum 6 images.')
                          : uploadCarImageController.pickedCarImage(),
                      child: Container(
                        height: 12.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffA7B5BB).withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: const Offset(0, 12))
                            ],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: const Color(0xff727272),
                              size: 3.h,
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              uploadCarImageController.selectedImage.value ==
                                          null ||
                                      uploadCarImageController
                                          .listOfSelectedImage.isEmpty
                                  ? "Add Images"
                                  : "Add More",
                              style: TextStyle(
                                  color: const Color(0xff727272),
                                  fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                // Obx(
                //   () => uploadCarImageController.listOfSelectedImage.isNotEmpty
                //       ? GridView.builder(
                //           padding: EdgeInsets.symmetric(horizontal: 3.h),
                //           shrinkWrap: true,
                //           physics: const NeverScrollableScrollPhysics(),
                //           gridDelegate:
                //               SliverGridDelegateWithFixedCrossAxisCount(
                //             mainAxisExtent: 14.h,
                //             crossAxisCount: 2,
                //             crossAxisSpacing: 1.h,
                //             mainAxisSpacing: 1.h,
                //           ),
                //           itemCount: uploadCarImageController
                //               .listOfSelectedImage.length,
                //           itemBuilder: (context, index) {
                //             return
                //               AnimatedContainer(
                //               duration: const Duration(milliseconds: 500),
                //               curve: Curves.fastOutSlowIn,
                //               decoration: BoxDecoration(
                //                   color: Colors.grey.withOpacity(0.3),
                //                   borderRadius: const BorderRadius.all(
                //                       Radius.circular(10)),
                //                   image: DecorationImage(
                //                       image: NetworkImage(
                //                         uploadCarImageController
                //                             .listOfSelectedImage[index],
                //                       ),
                //                       fit: BoxFit.fill)),
                //             );
                //           },
                //         )
                //       : Container(),
                // ),
                Obx(
                  () => uploadCarImageController.listOfSelectedImage.isNotEmpty
                      ? GridView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 3.h),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 14.h,
                            crossAxisCount: 2,
                            crossAxisSpacing: 1.h,
                            mainAxisSpacing: 1.h,
                          ),
                          itemCount: uploadCarImageController
                              .listOfSelectedImage.length,
                          itemBuilder: (context, index) {
                            return AnimatedContainer(
                                padding:
                                    const EdgeInsets.only(top: 5, right: 5),
                                alignment: Alignment.topRight,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                        image: FileImage(
                                            uploadCarImageController
                                                .listOfSelectedImage[index]!),
                                        fit: BoxFit.fill)),
                                child: InkWell(
                                  onTap: () {
                                    uploadCarImageController.listOfSelectedImage
                                        .removeAt(index);
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ));
                          },
                        )
                      : Container(),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
