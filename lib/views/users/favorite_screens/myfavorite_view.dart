import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/users/favorite_screens/favorite_view_widget.dart';
import 'package:flutter/material.dart';

class MyfavoriteView extends StatefulWidget {
  const MyfavoriteView({super.key});

  @override
  State<MyfavoriteView> createState() => _MyfavoriteViewState();
}

class _MyfavoriteViewState extends State<MyfavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 90,
        backgroundColor: Appcolors.primarColor,
        title: Center(
          child: Text(
            "My Favorites",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Appcolors.whiteColor,
              fontSize: 20,
              height: 1.6,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 25),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
        ],
      ),
    );
  }
}
