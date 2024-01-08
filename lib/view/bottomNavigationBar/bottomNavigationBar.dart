import 'package:car_chaser_app/view/Home/home_screen.dart';
import 'package:car_chaser_app/view/carDetails/addCarDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Chats/ChatSupport.dart';
import '../Setting/setting_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  MyBottomNavigationBarState createState() => MyBottomNavigationBarState();
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  static List<Widget> widgetOptions = <Widget>[
    const AddCarDetails(),
    const HomeScreen(),
    const ChatSupport(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widgetOptions.elementAt(_selectedIndex),
          Container(
            margin: EdgeInsets.only(right: 2.h, left: 2.h, bottom: 2.h),
            padding: EdgeInsets.symmetric(vertical: 1.5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.px),
              color: const Color(0xff36373C),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildNavItem(0, 'assets/svg/add0_active.svg',
                    'assets/svg/add0.svg', 'Add'),
                buildNavItem(1, 'assets/svg/home1_active.svg',
                    'assets/svg/home1.svg', 'Home'),
                buildNavItem(2, 'assets/svg/Chat_active.svg',
                    'assets/svg/chat.svg', 'Chat'),
                buildNavItem(3, 'assets/svg/setting_active.svg',
                    'assets/svg/setting.svg', 'Settings'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(
      int index, dynamic icon, dynamic activeIcon, String label) {
    late Widget iconWidget;

    iconWidget = SvgPicture.asset(
      _selectedIndex == index ? icon : activeIcon,
      height: _selectedIndex == index ? 5.h : 3.h,
      width: _selectedIndex == index ? 5.h : 3.h,
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconWidget,
          _selectedIndex == index
              ? Container()
              : Text(
                  label,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: _selectedIndex == index
                        ? const Color(0xFF4E9C0B)
                        : Colors.grey,
                  ),
                ),
        ],
      ),
    );
  }
}
