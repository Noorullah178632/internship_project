import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class BoardingView2 extends StatelessWidget {
  const BoardingView2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.9,

            height: screenWidth * 0.9,

            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Image(
                image: AssetImage("assets/images/boarding_icons/boarding2.png"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: screenWidth * 0.9,

            height: screenWidth * 0.8,

            child: Column(
              children: [
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14,
                        height: 1.5,
                        letterSpacing: 0.75,
                      ),
                      children: [
                        TextSpan(text: "Clicking on "),
                        TextSpan(
                          text: "☰",
                          style: TextStyle(
                            color: Appcolors
                                .primarColor, // The specific color for the icon
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              " at the top at the top of the home screen will take you to the Options Menu, where you can filter services based on categories like open services, map view etc.. Services that are Crisis Lines, My Favorites, etc.",
                        ),
                      ],
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
}
