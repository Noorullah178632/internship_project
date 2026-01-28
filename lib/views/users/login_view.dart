import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //global key for formstate
  final _formKey = GlobalKey<FormState>();
  //controllers for textfield
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //dispose method for form textfield
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            "Service Provider Login",
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
            Container(
              width: 149,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0XFF4CAF50)),
                ),
              ),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    height: 1.6,
                    letterSpacing: 1,
                    color: Appcolors.primarColor,
                  ),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
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
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return "Please Enter Your Email";
                    //   }
                    //   if (!value.endsWith("@gmail.com")) {
                    //     return "Gmail should be Specific";
                    //   }
                    //   //get the part before @

                    //   String username = value.split("@")[0];

                    //   if (username.length < 8) {
                    //     return "User name must be atleast 8 characters";
                    //   }
                    //   return "Wrong Email or Password";
                    // },
                  ),
                  //password Field
                  TextFormField(
                    controller: passwordController,
                    //for text security
                    obscureText: true,

                    //icon at last
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Color(0XFFAEAEAE),
                      ),
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
                      //text to label
                      label: Text(
                        "PASSWORD",
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
                      hintText: "......",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        height: 1.7,
                        letterSpacing: 0.75,
                        color: Color(0XFF717171),
                      ),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return "Please Enter Your Password";
                    //   }
                    //   if (value.length < 8) {
                    //     return 'Password must be at least 8 characters';
                    //   }
                    //   return "Wrong Password";
                    // },
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, RouteName.home);
                // if (_formKey.currentState!.validate()) {
                //   Navigator.pushReplacementNamed(context, RouteName.home);
                // }
              },
              child: Container(
                width: double.infinity,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Appcolors.primarColor,
                ),
                child: Center(
                  child: Text(
                    "LOGIN",
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
            // SizedBox(height: 25),
            Container(
              width: screenWidth,
              height: 43,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0XFFAEAEAE)),
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.signup);
                      },
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Appcolors.primarColor,
                          fontSize: 14,
                          height: 1.6,
                          letterSpacing: 0.75,
                        ),
                      ),
                    ),
                    SizedBox(width: 230),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.resetPassword);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Appcolors.primarColor,
                          fontSize: 14,
                          height: 1.6,
                          letterSpacing: 0.75,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
