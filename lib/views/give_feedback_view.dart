import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class GiveFeedbackView extends StatefulWidget {
  const GiveFeedbackView({super.key});

  @override
  State<GiveFeedbackView> createState() => _GiveFeedbackViewState();
}

class _GiveFeedbackViewState extends State<GiveFeedbackView> {
  //Global key for form
  final formkey = GlobalKey<FormState>();
  //controller for email and subject
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Appcolors.primarColor,
        title: Center(
          child: Text(
            "Feedback",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              height: 1.6,
              letterSpacing: 1,
              color: Appcolors.whiteColor,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: screenHeight * 0.5,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //emailField
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      //for borders
                      //   1:
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      // 2:
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      //3:
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      //lebel the text
                      label: Text(
                        "EMAIL",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          height: 1.7,
                          letterSpacing: 0.75,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      //hint text
                      hintText: "xyz@gamil.com",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        height: 1.7,
                        letterSpacing: 0.75,
                        color: Color(0XFF717171),
                      ),
                    ),
                    //gives some validation for the textfield
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Email";
                      }
                      if (!value.endsWith("@gmail.com")) {
                        return "Gmail should be Specific";
                      }
                      //get the part before @

                      String username = value.split("@")[0];

                      if (username.length < 8) {
                        return "User name must be atleast 8 characters";
                      }
                      return "Wrong Email or Password";
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  //Subject  Field
                  TextFormField(
                    controller: subjectController,

                    decoration: InputDecoration(
                      //for borders
                      //   1:
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      // 2:
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      //3:
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      //text to label
                      label: Text(
                        "SUBJECT",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          height: 1.7,
                          letterSpacing: 0.75,
                          color: Color(0XFFAEAEAE),
                        ),
                      ),
                      //hint text
                      hintText: "Subject",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        height: 1.7,
                        letterSpacing: 0.75,
                        color: Color(0XFF717171),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Subject";
                      }
                    },
                  ),

                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    "MESSAGE",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.75,
                      height: 1.6,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                        left: 3,
                        right: 3,
                      ),
                      width: screenWidth,
                      height: screenHeight * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0XFFAEAEAE)),
                      ),
                      child: TextFormField(
                        controller: messageController,
                        maxLines: 3,
                        minLines: 1,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Appcolors.primarColor,
                ),
                child: Center(
                  child: Text(
                    "Send Feedback",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.4,
                      letterSpacing: 0.75,
                      color: Colors.white,
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
