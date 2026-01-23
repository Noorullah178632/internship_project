import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
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
            "About Amdad",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Appcolors.whiteColor,
              fontSize: 20,
              height: 1.6,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.5,
                color: Color(0XFFAEAEAE).withOpacity(0.5),
              ),
            ),

            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text:
                        "Amdad is an all-volunteer, non-profit initiative dedicated to supporting ",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                      letterSpacing: 0.75,
                      color: Color(0XFF5E5E5E),
                    ),

                    children: [
                      TextSpan(
                        text: " homeless and at-risk youth ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            "homeless and at-risk youth in Pakistan by connecting them to essential services through a simple, easy-to-use mobile app. Our goal is to bridge the gap between individuals in need and the support systems that can help them—offering ",
                      ),
                      TextSpan(
                        text:
                            "access to food, shelter, healthcare, employment opportunities,",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: " and more.\n\n"),
                      TextSpan(
                        text: "With location-based resources,",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            "users can explore verified services available nearby. Each listing provides helpful details such as",
                      ),
                      TextSpan(
                        text: " contact information, directions, schedules, ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            "and availability (where applicable). Users can express appreciation for helpful services by tapping the like",
                      ),
                      TextSpan(
                        text: " button, or save resources",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            " button, or save resources they want to revisit later by clicking the ",
                      ),
                      TextSpan(
                        text: " star icon",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: "to add them to"),
                      TextSpan(
                        text: " My Favorites.",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: "In some cities, "),
                      TextSpan(
                        text: " coordinated entry systems",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            " exist to help people in crisis get matched with the most appropriate housing and support based on their specific situation. For this reason, we strongly encourage users to",
                      ),
                      TextSpan(
                        text: " contact services in advance",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " to confirm availability and eligibility.\n\n",
                      ),

                      TextSpan(text: "If you’re a"),
                      TextSpan(
                        text: " community worker, volunteer, or organization ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: "offering support services, you can"),
                      TextSpan(
                        text: " sign up ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: "on the app to"),
                      TextSpan(
                        text: " list or manage your services. ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: "Shelters can update"),
                      TextSpan(
                        text: " bed availability ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            " in real time. Please note that all submitted details go through a brief",
                      ),
                      TextSpan(
                        text: " approval process",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            " before appearing in the app to ensure accuracy and trust.\n\n",
                      ),
                      TextSpan(
                        text:
                            "We believe in community-driven improvement. If you notice ",
                      ),
                      TextSpan(
                        text: "outdated or incorrect information, ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            "you can help us keep the platform reliable by using the ",
                      ),
                      TextSpan(
                        text: "“Give Feedback”",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.75,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: " option in the app’s side menu.\n\n"),

                      TextSpan(
                        text:
                            "Together, we can build a more compassionate, connected world—one act of support at a time.",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: Appcolors.primarColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/community_care_icons/Earth.png",
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/community_care_icons/email.png",
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/community_care_icons/Twitter.png",
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/community_care_icons/facebook.png",
                        ),
                      ),
                    ],
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
    // style: GoogleFonts.poppins(
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 16,
    //                   height: 1.5,
    //                   letterSpacing: 0.75,
    //                   color: Colors.black,
    //                 ),

            //  "  and more.
            //   
            //   
            //      
            //   
            //