import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/users/community_screens/community_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({super.key});

  @override
  State<CommunityView> createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Appcolors.primarColor,
        toolbarHeight: 90,
        iconTheme: IconThemeData(color: Colors.white, size: 25),
        title: Center(
          child: Text(
            "Amdad",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Appcolors.whiteColor,
              fontSize: 20,
              height: 1.6,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(image: AssetImage("assets/images/icons/star.png")),
          ),
        ],
      ),

      body: Container(
        width: screenWidth,
        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //first part:Container with child texts
            Container(
              width: screenWidth,
              child: Column(
                //first text
                children: [
                  Text(
                    "Community Care",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      height: 1.4,
                      letterSpacing: 1,
                      color: Appcolors.primarColor,
                    ),
                  ),

                  Container(
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1,
                            color: Color(0XFF505050),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Food, Clothes, Shelter, Rent & Utility Assistance, Transportation, Personal Supplies, Laundry,  Health Screening, Sleep, shower...more",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1,
                            color: Color(0XFF393939),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //2rd  part: container with textfields
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.3, color: Color(0XFF393939)),
                    ),
                    child: Column(
                      children: [
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/phone.png",
                          "+923239867456",
                        ),
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/email.png",
                          "Info@communitycare.org",
                        ),
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/Earth.png",
                          "https://communitycare.org",
                        ),
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/facebook.png",
                          "www.facebook.com/communitycare",
                        ),
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/Twitter.png",
                          "https://twitter.com/communitycare",
                        ),
                        CommunityWidget.CommunityContainer(
                          "assets/images/community_care_icons/Location.png",
                          "Place, Lahore, Punjab, Pakistan ",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 3rd part : Container for google Maps
            Container(
              margin: EdgeInsets.only(top: 20),

              width: screenWidth,

              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: GoogleMap(
                //move the map
                scrollGesturesEnabled: true,
                zoomGesturesEnabled: true,
                fortyFiveDegreeImageryEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: LatLng(31.5204, 74.3587),
                  zoom: 25,
                ),
                //for gesture touch
                gestureRecognizers: {
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                },
                markers: {
                  Marker(
                    markerId: MarkerId("1"),
                    position: LatLng(31.5204, 74.3587),
                    infoWindow: InfoWindow(title: "Lahore"),
                  ),
                },
              ),
            ),
            //4th part: container with schedule information
            Column(
              children: [
                //4.1
                Container(
                  padding: EdgeInsets.only(right: 10, left: 5),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/community_care_icons/schedule.png",
                        ),
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Schedule",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          height: 1.6,
                          letterSpacing: 1,
                          color: Color(0XFF505050),
                        ),
                      ),
                    ],
                  ),
                ),
                //4.2
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(right: 5),
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 0.3,
                      color: Appcolors.primarColor,
                    ),
                  ),

                  child: Column(
                    children: [
                      CommunityWidget.CommutiyContainer2(
                        "Monday",
                        "7.00 AM - 7.00 PM",
                      ),
                      CommunityWidget.CommutiyContainer2(
                        "Thuesday",
                        "7.00 AM - 7.00 PM",
                      ),
                      CommunityWidget.CommutiyContainer2(
                        "Wednesday",
                        "7.00 AM - 7.00 PM",
                      ),
                      CommunityWidget.CommutiyContainer2(
                        "Thursday",
                        "7.00 AM - 7.00 PM",
                      ),
                      CommunityWidget.CommutiyContainer2(
                        "Friday",
                        "7.00 AM - 7.00 PM",
                      ),
                      CommunityWidget.CommutiyContainer2(
                        "Saturday",
                        "11.00 AM - 4.00 PM",
                      ),
                    ],
                  ),
                ),
                //4.3
                Container(
                  padding: EdgeInsets.only(right: 10, left: 5),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Appcolors.primarColor,
                          borderRadius: BorderRadius.circular(17.5),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person_2_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Anyone",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          height: 1.6,
                          letterSpacing: 1,
                          color: Color(0XFF505050),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //5 part : button
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: screenWidth * 0.7,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.primarColor,
                ),
                child: Center(
                  child: Text(
                    "Report Incorrect Info",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Appcolors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
