import 'package:first_app/view_models/bottom_nav.dart';
import 'package:first_app/views/homescreens.dart';
import 'package:first_app/views/workscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    //present all the screens
    final Screens = [Homescreens(), Homescreens(), Homescreens(), Workscreen()];
    //make instance of bottomNavigation provider
    final bottomProvider = context.watch<BottomNav>();
    return Scaffold(
      backgroundColor: Color(0xFFFFFF),
      body: Screens[bottomProvider.currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        //current index
        currentIndex: bottomProvider.currentIndex,
        //ontap : change the index
        onTap: bottomProvider.changeIndex,
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
              "assets/images/icons/Work.png",
              width: 35,
              height: 35,
            ),
            label: "Work",
          ),
        ],
      ),
    );
  }
}
