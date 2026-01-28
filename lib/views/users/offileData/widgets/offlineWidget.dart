import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class Offlinewidget {
  //make a showsnack bar
  void buildSnackBar(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          "Please enter amount save per type, select both country and province before save.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Missing Information",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            height: 1.7,
            letterSpacing: 1,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolors.primarColor,
                ),
                child: Center(
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
