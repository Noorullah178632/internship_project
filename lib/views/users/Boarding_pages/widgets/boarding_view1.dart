import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class BoardingView1 extends StatelessWidget {
  const BoardingView1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                image: AssetImage("assets/images/boarding_icons/boarding1.png"),
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
                  child: Text(
                    "Tabs at the bottom of the home screen will help you navigate to resources like food, shelter, health, resources & and education.Each tab has subtabs on top of them, like clothes, hygiene,tech, etc., to help narrow your search.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0.75,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/boarding_icons/select.png",
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),

                          Text(
                            "If you would like to set up ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.75,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),

                          FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "the offline availability,",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.75,
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "click here",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                    decorationColor: Appcolors.primarColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.75,
                                    height: 1.5,
                                    color: Appcolors.primarColor,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
