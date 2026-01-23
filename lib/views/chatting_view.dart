import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/DraweScreens/drawer_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChattingView extends StatefulWidget {
  const ChattingView({super.key});

  @override
  State<ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<ChattingView> {
  //field for chatting field
  TextEditingController chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //appbar
      drawer: Mydrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 62,
        iconTheme: const IconThemeData(color: Colors.white),
        // 1. Increase width to fit Drawer icon + Location icon
        leadingWidth: 100,
        leading: Row(
          children: [
            // 2. Manual Drawer Button
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            // 3. Location Icon
            Image.asset(
              "assets/images/icons/location.png",
              width: 24,
              height: 24,
              color: Colors.white, // Ensures it matches theme
            ),
          ],
        ),
        // 4. Centered Title
        title: const Text(
          "Amdad",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 24),
          ),
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // ListView(children: [_buildInputArea()]),
          SizedBox(height: 10),
          _buildInputArea(),
        ],
      ),
    );
  }

  //input area widget
  Widget _buildInputArea() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 6, bottom: 6, left: 15, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(width: 0.5, color: Appcolors.primarColor),
                bottom: BorderSide(width: 0.5, color: Appcolors.primarColor),
              ),
            ),
            child: TextField(
              controller: chatController,
              maxLines: 4,
              minLines: 1,
              decoration: InputDecoration(
                hintText: "Text a message...",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send, color: Colors.green),
          onPressed: () {},
        ),
      ],
    );
  }
}
