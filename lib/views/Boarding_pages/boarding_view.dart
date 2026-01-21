import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/boarding_view_model.dart';
import 'package:first_app/views/Boarding_pages/widgets/boarding_view1.dart';
import 'package:first_app/views/Boarding_pages/widgets/boarding_view2.dart';
import 'package:first_app/views/Boarding_pages/widgets/boarding_view3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingView extends StatefulWidget {
  const BoardingView({super.key});

  @override
  State<BoardingView> createState() => _BoardingViewState();
}

class _BoardingViewState extends State<BoardingView> {
  //final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    //access the viewmodel of boarding
    final viewModel = context.watch<BoardingViewModel>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: viewModel.controller,
              onPageChanged: (value) => viewModel.setPage(value),
              children: [BoardingView1(), BoardingView2(), BoardingView3()],
            ),
            // Positioned(child: ElevatedButton(onPressed: (){}, child: )),
            Align(
              alignment: Alignment.bottomCenter,

              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: SmoothPageIndicator(
                  onDotClicked: (index) {
                    viewModel.controller.animateToPage(
                      index,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                  controller: viewModel.controller,
                  count: 3,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 12,
                      height: 12,
                      color: Appcolors.primarColor,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    dotDecoration: DotDecoration(
                      width: 12,
                      height: 12,
                      color: Appcolors.whiteColor,
                      dotBorder: DotBorder(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ),
            ),
            if (viewModel.currentindex != 0)
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 39, left: 15),
                  child: GestureDetector(
                    onTap: () {
                      viewModel.previousPage();
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Appcolors.primarColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Appcolors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if (viewModel.currentindex != 2)
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 39, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      viewModel.nextPage();
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Appcolors.primarColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Appcolors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if (viewModel.currentindex != 2)
              GestureDetector(
                onTap: () {
                  viewModel.skip();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4,
                      right: 8,
                      bottom: 4,
                      left: 8,
                    ),
                    child: Container(
                      width: 76,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Appcolors.primarColor,
                      ),
                      child: Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1,
                            letterSpacing: 0,
                            color: Appcolors.whiteColor,
                          ),
                        ),
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
