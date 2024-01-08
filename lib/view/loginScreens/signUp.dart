import 'package:car_chaser_app/controller/auth_controller/sign_up_controller.dart';
import 'package:car_chaser_app/view/loginScreens/signIn.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors/color.dart';
import '../../validations/validations.dart';
import '../../widget/customSignUp.dart';
import '../../widget/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController signUpController =
      Get.put(SignUpController(), tag: 'signUpController');

  final List<String> items = [
    'Lahore',
    'Muridkey',
    'Islamabad',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 8.h,
          ),
          Image.asset(
            "assets/png/signcar.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 1.h,
          ),
          const Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              children: [
                CustomTextFieldSignUp(
                  controller: signUpController.firstNameTextController,
                  keyboardType: TextInputType.name,
                  hintText: 'First Name',
                  prefixIconPath: 'assets/svg/PROFILEICON.svg',
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextFieldSignUp(
                  keyboardType: TextInputType.name,
                  controller: signUpController.lastNameTextController,
                  hintText: 'Last Name',
                  prefixIconPath: 'assets/svg/PROFILEICON.svg',
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextFieldSignUp(
                  keyboardType: TextInputType.emailAddress,
                  controller: signUpController.emailTextController,
                  hintText: 'Email',
                  prefixIconPath: 'assets/svg/emailicon.svg',
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextFieldSignUp(
                  keyboardType: TextInputType.phone,
                  controller: signUpController.phoneNumberTextController,
                  hintText: 'Phone Number',
                  prefixIconPath: 'assets/svg/lockemail.svg',
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: CustomTextFieldSignUp(
                      keyboardType: TextInputType.number,
                      controller: signUpController.postalCodeTextController,
                      hintText: 'Postal code',
                      prefixIconPath: 'assets/svg/location.svg',
                    )),
                    SizedBox(
                      width: 2.h,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xffA7B5BB).withOpacity(0.3),
                                blurRadius: 6,
                                offset: const Offset(0, 3))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/location.svg',
                              height: 18.0,
                              width: 18.0,
                            ),
                            SizedBox(width: 1.h,),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: const Text(
                                    'City',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffDFDFDF),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  items: items
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
                                  value: selectedValue,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedValue = value;
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
                            SizedBox(width: 1.h,),
                          ],
                        ),
                      ),

                      //     CustomTextFieldSignUp(
                      //   keyboardType: TextInputType.streetAddress,
                      //   controller: signUpController.cityTextController,
                      //   hintText: 'City',
                      //   prefixIconPath: 'assets/svg/location.svg',
                      // )
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 40),
                backgroundColor: MyColors.myAppThemeColor),
            onPressed: () {
              Get.to(() => const SignInScreen());

              // if (Validations.handleSingUpScreenError(
              //   firstNameTextController:
              //       signUpController.firstNameTextController,
              //   lastNameTextController:
              //       signUpController.lastNameTextController,
              //   emailTextController: signUpController.emailTextController,
              //   phoneNumberTextController:
              //       signUpController.phoneNumberTextController,
              //   postalCodeTextController:
              //       signUpController.postalCodeTextController,
              //   cityTextController: signUpController.cityTextController,
              // ).isNotEmpty) {
              //   customScaffoldMessenger(
              //       context,
              //       Validations.handleSingUpScreenError(
              //         firstNameTextController:
              //             signUpController.firstNameTextController,
              //         lastNameTextController:
              //             signUpController.lastNameTextController,
              //         emailTextController:
              //             signUpController.emailTextController,
              //         phoneNumberTextController:
              //             signUpController.phoneNumberTextController,
              //         postalCodeTextController:
              //             signUpController.postalCodeTextController,
              //         cityTextController: signUpController.cityTextController,
              //       ));
              // } else {
              //   signUpController.handleSignUp(
              //     context,
              //     firstName:
              //         signUpController.firstNameTextController.text.trim(),
              //     lastName:
              //         signUpController.lastNameTextController.text.trim(),
              //     email: signUpController.emailTextController.text.trim(),
              //     phoneNumber:
              //         signUpController.phoneNumberTextController.text.trim(),
              //     postalCode:
              //         signUpController.postalCodeTextController.text.trim(),
              //     city: signUpController.cityTextController.text.trim(),
              //   );
              // }
            },
            child: const Text(
              "Sign Up",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          // Obx(
          //   () => signUpController.isLoadingSignUp.value
          //       ? SizedBox(
          //     height: 2.5.h,
          //     width: 2.5.h,
          //     child: CircularProgressIndicator(
          //       color: Colors.white,
          //       strokeWidth: 2.5,
          //       backgroundColor: Colors.grey.withOpacity(0.2),
          //     ),
          //   )
          //       : const Text(
          //           "Sign Up",
          //           style: TextStyle(
          //               color: Colors.white, fontWeight: FontWeight.bold),
          //         ),
          // )),
          SizedBox(
            height: 2.h,
          ),
          const Center(
              child: Text(
            "OR",
            style: TextStyle(color: Colors.black),
          )),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/google.svg"),
              SizedBox(
                width: 2.h,
              ),
              SvgPicture.asset("assets/svg/APPLE.svg"),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an Account?",
                  style: TextStyle(color: Color(0xff707070), fontSize: 12)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignInScreen()));
                  },
                  child: const Text(" Sign In",
                      style: TextStyle(
                        color: Color(0xff4E9C0B),
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
        ]),
      ),
    );
  }
}
