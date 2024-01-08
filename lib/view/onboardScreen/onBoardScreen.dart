import 'package:car_chaser_app/view/onboardScreen/startedScreen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              buildOnBoardScreen(
                "Let's help you ",
                "Sell ",
                "your ",
                "Car",
                " for",
                " Top Dollar",
                "",
                "",
                "assets/png/1mage.png",
              ),
              buildOnBoardScreen(
                "",
                "Selling",
                " Your car",
                "Privately",
                  " is a Hassle",
                " ",
                "Over 100 dealers are competiting to buy your car.",
                "",
                "assets/png/2image.png"
              ),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.03,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (_currentPage == 2)
                  TextButton(
                    onPressed: () {

                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.5,
                          ),
                        ],
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Text(
                          "Started",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                if (_currentPage == 1) // Show text on the last page
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const StartedScreen()));
                      // _controller.nextPage(
                      //   duration: Duration(milliseconds: 500),
                      //   curve: Curves.ease,
                      // );
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.5,
                          ),
                        ],
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                if (_currentPage == 0) // Show text button on the first page
                  TextButton(
                    onPressed: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.5,
                          ),
                        ],
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnBoardScreen(
      String name,
      String name1,
      String nameyour,
      String name2,
      String name3,
      String name4,
      String desc,
      String color,
      String image,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.translate(offset: Offset(0,12.h),
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child:



              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: name, // Use the first instance of the name variable
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: name1, // Use the second instance of the name variable
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: nameyour, // Use the second instance of the name variable
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 2.5.h),
        Transform.translate(offset: Offset(0,10.h),
          child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: name2, // Use the first instance of the name variable
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: name3, // Use the second instance of the name variable
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: name4, // Use the first instance of the name variable
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Transform.translate(offset: Offset(0,10.h),
          child: Center(
            child: Align(alignment:Alignment.centerLeft ,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.h),
                child: Text(
                  desc,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.translate(offset: Offset(0,16.h),
          child: DotsIndicator(
            dotsCount: 3,
            position: _currentPage.toDouble().toInt(),
            decorator: DotsDecorator(
              color: Colors.grey.withOpacity(0.3), // Inactive color
              activeColor: Colors.green,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Transform(
              transform: Matrix4.identity()..scale(1.1), // Adjust the scale factor as needed
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),


      ],
    );
  }

}
