import 'package:flutter/material.dart';

class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  icon: Icon(Icons.menu, color: Colors.white, size: 24),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/icons/location.png",
                    width: 20,
                    height: 20,
                    color: Colors.white,
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
                  ),
                ),
              ),
            ),
            //search and chatbot icons
            Row(
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
      body: Text("Home Screen"),
    );
  }
}
