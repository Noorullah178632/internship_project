import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomizeContainer extends StatelessWidget {
  final String customizeText;
  final String customizeImage;

  final String routeName;

  //make a constrcutor for them
  CustomizeContainer({
    required this.customizeText,
    required this.customizeImage,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        height: 35,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0XFF5E5E5E), width: 0.3),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Image(image: AssetImage(customizeImage), width: 25, height: 25),
              SizedBox(width: 4),
              Text(
                customizeText,
                style: TextStyle(
                  color: Appcolors.primarColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 1,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
