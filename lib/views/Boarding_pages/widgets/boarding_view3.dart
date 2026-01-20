import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class BoardingView3 extends StatelessWidget {
  const BoardingView3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Appcolors.primarColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Image(
            image: AssetImage("assets/images/boarding_icons/check.png"),
          ),
        ),
        Text(
          "ACCEPT TERMS",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 32,
            height: 1.3,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: EdgeInsets.only(left: 5, right: 15, top: 7, bottom: 7),
          width: double.infinity,
          height: screenHeight * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Appcolors.primarColor),
          ),
          child: Center(
            child: Text.rich(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1.7,
                letterSpacing: 0.75,
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: "By clicking\"I Agree\",you accept Big Country ",
                  ),
                  TextSpan(text: "Navigator App’s "),
                  TextSpan(
                    text: "Terms of Use and Privacy Policy.",
                    style: TextStyle(color: Color(0XFF4CAF50)),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 340,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0XFFC8E6C9),
          ),
          child: Center(
            child: Text(
              "I Agree",
              style: TextStyle(
                fontSize: 20,
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: Color(0XFF2E7D32),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 340,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Color(0XFFC8E6C9)),
          ),
          child: Center(
            child: Text(
              "Cancel",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
