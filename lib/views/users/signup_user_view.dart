import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/firebaseServices_viewModels/authentication_view_model.dart';
import 'package:first_app/view_models/normal_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignupUserView extends StatefulWidget {
  const SignupUserView({super.key});

  @override
  State<SignupUserView> createState() => _SignupUserViewState();
}

class _SignupUserViewState extends State<SignupUserView> {
  //global key for formstate
  final _formKey = GlobalKey<FormState>();
  //controllers for textfield
  TextEditingController companyController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //dispose method for controller
  @override
  void dispose() {
    // TODO: implement dispose
    companyController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          width: double.infinity,

          // height: screenHeight * 0.54,
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
                    "SIGNUP",
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
                    //PHONE section
                    TextFormField(
                      controller: phoneController,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.number,
                      //icon at last
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
                          "Name",
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
                        hintText: "user....",

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
                          return 'Name is required';
                        }

                        return null;
                      },
                    ),
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
                        hintText: "name@gmail.com",
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
                        } else if (!value.endsWith("@gmail.com")) {
                          return "Please Enter Valid Email";
                        }

                        return null;
                      },
                    ),
                    Consumer<NormalModel>(
                      builder: (build, mv, child) {
                        return TextFormField(
                          controller: passwordController,
                          //for text security
                          obscureText: mv.isvisible,

                          //icon at last
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                mv.setvisibility();
                              },
                              icon: Icon(
                                mv.isvisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
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
                                width: 0.5,
                                color: Color(0XFFAEAEAE),
                              ),
                            ),
                            //3:
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.red,
                              ),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Your Password";
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                        );
                      },
                    ),

                    //password Field
                  ],
                ),
              ),

              Consumer<NormalModel>(
                builder: (build, myModel, child) {
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    fillColor: MaterialStateProperty.all(
                      myModel.isChecked
                          ? Appcolors.primarColor
                          : Colors.transparent,
                    ),
                    checkColor: Colors.white,

                    side: BorderSide(color: Color(0XFF717171), width: 1),
                    title: Text(
                      "Accept Terms of Use & Privacy",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.4,
                        letterSpacing: 0.75,
                        color: Appcolors.primarColor,
                      ),
                    ),
                    value: myModel.isChecked,
                    onChanged: (v) {
                      myModel.setChecked();
                    },
                  );
                },
              ),
              Consumer<AuthenticationViewModel>(
                builder: (context, vm, child) {
                  return GestureDetector(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        //it will return either true or false
                        final success = await vm.signUp(
                          emailController.text.toString(),
                          passwordController.text.toString(),
                        );
                        showAuthSnackBar(
                          success, //true or false
                          success
                              ? "Sign Up Successful!"
                              : vm.errorMessage, //if false it will shows us error
                          onSuccess: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RouteName.home,
                            );
                          },
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Appcolors.primarColor,
                      ),
                      child: Center(
                        child: vm.isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                                "SIGNUP",
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
      ),
    );
  }

  //snackBar for authentication
  void showAuthSnackBar(
    bool success,
    String? message, {
    VoidCallback? onSuccess,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: EdgeInsets.only(
          top: 10,

          bottom: MediaQuery.of(context).size.height - 150,
        ),
        behavior: SnackBarBehavior.floating,
        content: Text(
          message ?? (success ? "Success" : "Something went wrong"),
        ),
        backgroundColor: success ? Colors.blue : Colors.red,
        duration: Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10.r),
        ),
      ),
    );
    if (success && onSuccess != null) {
      onSuccess();
    }
  }
}
