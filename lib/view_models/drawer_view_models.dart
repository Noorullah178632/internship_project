//making class for Drawer
import 'package:flutter/material.dart';

//make a class to control the scaffold state using global key
class DrawerViewModels extends ChangeNotifier {
  //make a key for drawer to handle it manually
  GlobalKey<ScaffoldState> drawerkey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    drawerkey.currentState!.openDrawer();
    notifyListeners();
  }
}
