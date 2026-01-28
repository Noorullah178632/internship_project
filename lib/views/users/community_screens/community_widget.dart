import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CommunityWidget {
  static Widget CommunityContainer(String image, String text) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Color(0XFF393939)),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image(image: AssetImage(image)),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.7,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget CommutiyContainer2(String day, String time) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Appcolors.primarColor),
        ),
      ),
      child: Row(
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 14, height: 1.7, letterSpacing: 1),
          ),
          Spacer(),
          Expanded(
            child: Text(
              time,
              style: TextStyle(fontSize: 14, height: 1.7, letterSpacing: 1),
            ),
          ),
        ],
      ),
    );
  }
}
