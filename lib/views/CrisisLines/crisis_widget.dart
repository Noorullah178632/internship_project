import 'package:first_app/models/crisis_model.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CrisisWidget extends StatelessWidget {
  final CrisisModel services;
  CrisisWidget({required this.services});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,

      height: screenHeight * 0.178,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.5, color: Color(0xFFAEAEAE)),
      ),
      child: Column(
        children: [
          //1st container
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border(
                  bottom: BorderSide(color: Color(0xFFAEAEAE), width: 0.5),
                ),
                color: Color(0xFFC8E6C9),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        services.title,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    IconButton(
                      onPressed: () async {
                        final Uri url = Uri.parse("https://www.edhi.org/");
                        if (!await launchUrl(url)) {
                          throw Exception("Could not launch $url");
                        }
                      },
                      icon: Image(
                        image: AssetImage("assets/images/icons/website.png"),
                        width: 22,
                        height: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //2nd container
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFC8E6C9),
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFFAEAEAE)),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      width: 24,
                      height: 24,
                      image: AssetImage("assets/images/icons/phone.png"),
                    ),
                  ),
                  Text(
                    services.number,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 0.8,
                      letterSpacing: 0.75,
                      color: Color(0xFF393939),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //3rd container
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFFAEAEAE)),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                child: Text(
                  services.descriptin,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    letterSpacing: 0.75,

                    color: Color(0xFF393939),
                  ),
                ),
              ),
            ),
          ),
          //4th container
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFC8E6C9),
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Color(0xFFAEAEAE)),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 7,
                      bottom: 10,
                    ),
                    child: Text(
                      services.area,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 0.8,
                        letterSpacing: 0.75,
                        color: Color(0xFF393939),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
