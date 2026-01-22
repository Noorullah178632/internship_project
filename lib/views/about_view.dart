import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5, color: Color(0XFFAEAEAE)),
            ),

            child: Text(
              "This is me ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 1.5,
                letterSpacing: 0.75,
                color: Color(0XFF5E5E5E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


            //  "Amdad is an all-volunteer, non-profit initiative dedicated to supporting homeless and at-risk youth in Pakistan by connecting them to essential services through a simple, easy-to-use mobile app. Our goal is to bridge the gap between individuals in need and the support systems that can help them—offering access to food, shelter, healthcare, employment opportunities, and more.
            //With location-based resources, users can explore verified services available nearby. Each listing provides helpful details such as contact information, directions, schedules, and availability (where applicable). Users can express appreciation for helpful services by tapping the like button, or save resources they want to revisit later by clicking the star icon to add them to My Favorites.
            //In some cities, coordinated entry systems exist to help people in crisis get matched with the most appropriate housing and support based on their specific situation. For this reason, we strongly encourage users to contact services in advance to confirm availability and eligibility.
            //If you’re a community worker, volunteer, or organization offering support services, you can sign up on the app to list or manage your services. Shelters can update bed availability in real time. Please note that all submitted details go through a brief approval process before appearing in the app to ensure accuracy and trust.
            //We believe in community-driven improvement. If you notice outdated or incorrect information, you can help us keep the platform reliable by using the “Give Feedback” option in the app’s side menu.
            //Together, we can build a more compassionate, connected world—one act of support at a time.",

