import 'package:flutter/material.dart';

class Workscreen extends StatefulWidget {
  const Workscreen({super.key});

  @override
  State<Workscreen> createState() => _WorkscreenState();
}

class _WorkscreenState extends State<Workscreen> {
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
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/icons/back_arrow.png",
                width: 30,
                height: 30,
                color: Colors.white,
              ),
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
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/icons/star.png",
                width: 35,
                height: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(child: Text("This is me")),
    );
  }
}
