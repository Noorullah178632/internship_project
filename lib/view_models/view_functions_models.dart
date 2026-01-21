import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class ViewFunctionsModels {
  //function for showbottomsheet
  static void showButtomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Appcolors.whiteColor,
      context: context,
      builder: (_) {
        return Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 22,
                  right: 24,
                  bottom: 21,
                  left: 24,
                ),
                width: double.infinity,
                height: 130,

                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Accept Terms",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          height: 1.5,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "Accept terms is mandatory for app featuring.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.6,
                          letterSpacing: 0.75,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity / 2,
                height: 45,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 41,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFF1C1C1C0D).withOpacity(0.07),
                          ),
                          child: Center(
                            child: Text(
                              "Exit",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                height: 1.7,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    FittedBox(
                      fit: BoxFit.scaleDown,

                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteName.login,
                          );
                        },
                        child: Container(
                          width: 70,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFF2E7D32),
                          ),
                          child: Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                height: 1.7,
                                letterSpacing: 0.75,
                                color: Appcolors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
