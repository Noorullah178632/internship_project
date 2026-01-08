import 'dart:js_interop';

import 'package:first_app/utils/Appcolors.dart';
import 'package:first_app/view_models/switch_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0XFFFFFFFF),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //header of the drawer
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(color: Colors.green),
            child: Center(
              child: Text(
                "Options",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 1,
                  color: Color(0XFFFFFFFF),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          //Switch toggle 1
          Consumer<SwitchViewModel>(
            builder: (context, togg, child) {
              return Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0XFF5E5E5E), width: 0.3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/icons/open_services.png",
                            ),
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Open Services",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              height: 1.5,
                              letterSpacing: 1,
                              color: Appcolors.primarColor,
                            ),
                          ),
                        ],
                      ),

                      Transform.scale(
                        scale: 0.6,
                        child: Switch(
                          activeTrackColor: Appcolors.primarColor,
                          inactiveTrackColor: Color(0XFFAEAEAE),

                          value: togg.toggle,
                          onChanged: (newValue) {
                            togg.toggleSwitch(newValue);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          //switch toggle 2
          Consumer<SwitchViewModel>(
            builder: (builder, togg2, cotext) {
              return Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0XFF5E5E5E), width: 0.3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(5),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/icons/map_view.png",
                            ),
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Map View",
                            style: TextStyle(
                              color: Appcolors.primarColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Switch(
                          activeTrackColor: Appcolors.primarColor,
                          // activeColor: Appcolors.primarColor,
                          inactiveTrackColor: Color(0XFFAEAEAE),

                          value: togg2.toggle2,
                          onChanged: (newValue) {
                            togg2.toggleSwitch2(newValue);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
