import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/crisis_view_model.dart';
import 'package:first_app/views/CrisisLines/crisis_widget.dart';
import 'package:flutter/material.dart';

class CrisisLineView extends StatefulWidget {
  @override
  State<CrisisLineView> createState() => _CrisisLineViewState();
}

class _CrisisLineViewState extends State<CrisisLineView> {
  CrisisViewModel viewModel = CrisisViewModel();
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //appbar
      appBar: AppBar(
        toolbarHeight: 66,
        backgroundColor: Appcolors.primarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Text(
              "Crisis Lines",
              style: TextStyle(
                color: Appcolors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,

                height: 1.3,
                letterSpacing: 1,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white, size: 24),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 13, right: 13, top: 15),
        child: ListView.separated(
          itemBuilder: (context, index) =>
              CrisisWidget(services: viewModel.crisisServices[index]),
          separatorBuilder: (context, index) =>
              SizedBox(height: screenHeight * 0.012),
          itemCount: viewModel.crisisServices.length,
        ),
      ),
    );
  }
}
