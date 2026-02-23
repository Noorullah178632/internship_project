import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/firebaseServices_viewModels/authentication_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  //global key for formstate
  final _formkey = GlobalKey<FormState>();
  //controllers for textfield
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Appcolors.primarColor,
        title: Center(
          child: Text(
            "Forgot Password",
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
        height: screenHeight * 0.2,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Form(
              key: _formkey,
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
                          width: 0.5,
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
                      return null;
                    },
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20),
            Consumer<AuthenticationViewModel>(
              builder: (context, vm, child) {
                return GestureDetector(
                  onTap: () async {
                    if (_formkey.currentState!.validate()) {
                      final success = await vm.forgetPassword(
                        emailController.text.toString(),
                      );
                      showAuthSnackBar(
                        success ? "Successfully Send Email" : vm.errorMessage,
                        success,
                        () {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteName.login,
                          );
                        },
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolors.primarColor,
                    ),
                    child: Center(
                      child: vm.isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              "Reset Password",
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  //show snackbar for reset password
  void showAuthSnackBar(
    String? message,
    bool success,
    VoidCallback? onsuccess,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message ??
              (success ? "Successfully send email" : "Something went wrong"),
        ),
        backgroundColor: success ? Colors.green : Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
    if (success && onsuccess != null) {
      onsuccess();
    }
  }
}
