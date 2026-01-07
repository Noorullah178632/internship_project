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
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 25),

        width: screenWidth * 1,
        height: screenHeight * 0.25,
        child: Column(
          children: [
            Text(
              "Community Care",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Appcolors.primarColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
