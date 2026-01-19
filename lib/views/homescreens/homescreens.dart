import 'package:first_app/view_models/bottom_view_nav.dart';

import 'package:first_app/views/DraweScreens/drawer_view_screen.dart';
import 'package:first_app/views/widgets/containerWidget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNav>(
      builder: (context, botNav, index) {
        return Scaffold(
          //drawer
          drawer: Mydrawer(),
          //appbar
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            toolbarHeight: 62,
            backgroundColor: Colors.green,

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //drawer and location icons
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/icons/location.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                //Name title
                Expanded(
                  child: Center(
                    child: Text(
                      "Amdad",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                //search and chatbot icons
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search, size: 24, color: Colors.white),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/icons/chatbot.png",
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          backgroundColor: Colors.white,

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Containerwidget(),
                Containerwidget(),
                Containerwidget(),
                Containerwidget(),
              ],
            ),
          ),
          //bottom Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            //current index
            currentIndex: botNav.currentIndex,
            //ontap : change the index
            onTap: botNav.changeIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.green,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.50),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/icons/food.png",
                  width: 35,
                  height: 35,
                ),
                label: 'Food',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/icons/shelter.png",
                  width: 35,
                  height: 35,
                ),
                label: "Shelter",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/icons/health.png",
                  width: 35,
                  height: 35,
                ),
                label: "Health",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/icons/work.png",
                  width: 35,
                  height: 35,
                ),
                label: "Work",
              ),
            ],
          ),
        );
      },
    );
  }
}
