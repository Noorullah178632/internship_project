import 'package:first_app/utils/Routes/routes.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteName.communityCare);
      },
      child: Container(
        width: double.infinity,
        height: screenHeight * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFFC8E6C9),
          boxShadow: [
            BoxShadow(
              color: Color(0XFF00000040).withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),

        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        padding: EdgeInsets.only(top: 1, bottom: 1, left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                "Community Care",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 1.6,
                  letterSpacing: 1,
                  color: Color(0XFF4CAF50),
                ),
              ),
            ),
            Flexible(
              child: Text(
                "Services",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  height: 1.6,
                  letterSpacing: 1,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              "Food, Clothes Shelter, Health Screening, Sleep, shower...more",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1.9,

                letterSpacing: 0.75,
                color: Colors.black,
              ),
            ),
            Flexible(
              child: Text(
                "Open 24/7",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.7,
                  letterSpacing: 0.75,
                  color: Color(0XFF4CAF50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
