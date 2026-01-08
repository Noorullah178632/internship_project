import 'package:first_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';

class Containerwidget extends StatefulWidget {
  const Containerwidget({super.key});

  @override
  State<Containerwidget> createState() => _ContainerwidgetState();
}

class _ContainerwidgetState extends State<Containerwidget> {
  @override
  Widget build(BuildContext context) {
    //decide width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return FittedBox(
      fit: BoxFit.fill,
      child: GestureDetector(
        child: Container(
          // color: Colors.blue,
          margin: EdgeInsets.only(left: 15, right: 15, top: 17),

          width: screenWidth,
          height: screenHeight * 0.33,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Community Care",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Appcolors.primarColor,
                ),
              ),
              Text(
                "Services",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),

              Text(
                "Food, Clothes Shelter, Health Screening, Sleep, shower...more",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: 0.75,
                  height: 1.5,
                  color: Color(0XFF393939),
                ),
              ),
              SizedBox(height: screenHeight * 0.002),
              Image(image: AssetImage("assets/images/icons/Anyone.png")),
              SizedBox(height: screenHeight * 0.002),
              Image(image: AssetImage("assets/images/icons/Call-number.png")),
              SizedBox(height: screenHeight * 0.002),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Open 24/7",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 16,
                        color: Color(0XFF000000),
                      ),
                    ),
                    Image(image: AssetImage("assets/images/icons/Likes.png")),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              SizedBox(
                width: screenWidth,
                child: Divider(
                  thickness: 0.2,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0XFF717171),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
