import 'package:first_app/view_models/donut_chart_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonutChartView extends StatelessWidget {
  final sections = [
    PieChartSectionData(
      value: 40, // size of this slice
      color: Colors.blue, // slice color
      title: "40%", // text on the slice
      radius: 50, // thickness of slice
    ),
    PieChartSectionData(
      value: 30,
      color: Colors.green,
      title: "30%",
      radius: 50,
    ),
    PieChartSectionData(value: 20, color: Colors.red, title: "20%", radius: 50),
    PieChartSectionData(
      value: 10,
      color: Colors.orange,
      title: "10%",
      radius: 50,
    ),
  ];

  DonutChartView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (_) => DonutChartViewModel(),
      child: Consumer<DonutChartViewModel>(
        builder: (context, donutVM, child) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: screenWidth,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Approval Workflow Stats",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    height: 1.5,
                    letterSpacing: 1,
                    color: Color(0XFF505050),
                  ),
                ),

                _buildLegend(donutVM),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLegend(DonutChartViewModel viewmodel) {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: viewmodel.chartData.map((index) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: viewmodel.getColorForCategory(index.category),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              index.category,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
