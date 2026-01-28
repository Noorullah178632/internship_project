import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/users/DraweScreens/drawer_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChattingView extends StatefulWidget {
  const ChattingView({super.key});

  @override
  State<ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<ChattingView> {
  //field for chatting field
  TextEditingController chatController = TextEditingController();
  //bool for both the widget
  bool messages = true;
  //bool for greeting
  bool greeting = true;

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
          if (messages != true) _buildMessagesArea(context),
          if (greeting == true) Spacer(),
          if (greeting == true) _buildGreetingMessage(context),
          SizedBox(height: screenHeight * 0.05),
          _buildInputArea(),
        ],
      ),
    );
  }

  //showing mesages in the screen
  Widget _buildMessagesArea(BuildContext context) {
    // ignore: non_constant_identifier_names
    double Screenwidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(10),
              width: Screenwidth / 2,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "This is me ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //show greeting message
  Widget _buildGreetingMessage(BuildContext context) {
    // ignore: non_constant_identifier_names
    double Screenwidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: Screenwidth,
      height: ScreenHeight * 0.27,
      margin: EdgeInsets.only(left: 15, right: 15),
      padding: EdgeInsets.symmetric(horizontal: 22),

      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(bottom: ScreenHeight * 0.02),
            width: Screenwidth * 0.75,
            height: 80,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "March 20, 2025",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.75,
                    color: Color(0XFFAEAEAE),
                  ),
                ),
                Flexible(
                  child: Text(
                    "Greetings! I’m Malika, AmdadApp chatbot. How can I help you today?",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 1.7,
                      letterSpacing: 1,
                      color: Color(0XFF505050),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "10:50",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0.75,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: Screenwidth * 0.65,
            height: 68,

            child: Row(
              children: [
                Flexible(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: ScreenHeight * 0.02,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildContainer("Food"),
                      _buildContainer("Shelter"),
                      _buildContainer("Health"),
                      _buildContainer("Resources"),
                      _buildContainer("Work"),
                      _buildContainer("Crisis Lines"),
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

  //input area widget
  Widget _buildInputArea() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
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
            onPressed: () {
              chatController.clear();
            },
          ),
        ],
      ),
    );
  }

  //make a widget for container
  Widget _buildContainer(String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 1, color: Color(0XFF4CAF50)),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          height: 1.5,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.75,
          color: Color(0XFF4CAF50),
        ),
      ),
    );
  }
}
