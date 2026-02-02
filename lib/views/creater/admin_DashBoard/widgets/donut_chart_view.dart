import 'package:first_app/view_models/donut_chart_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonutChartView extends StatelessWidget {
  const DonutChartView({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Spacer(),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PieChart(
                        PieChartData(
                          sectionsSpace: 3.r,
                          centerSpaceRadius: 80.r,
                          startDegreeOffset: -90,
                          pieTouchData: PieTouchData(
                            enabled: true,
                            touchCallback: (event, response) {
                              if (response != null &&
                                  response.touchedSection != null) {
                                donutVM.setTouchedIndex(
                                  response.touchedSection!.touchedSectionIndex,
                                );
                              }
                            },
                          ),
                          sections: buildDonutChartSection(donutVM),
                        ),
                      ),

                      // Center Text
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            donutVM.totalValue.toString(),
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("(100%)"),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                _buildLegend(donutVM),
              ],
            ),
          );
        },
      ),
    );
  }

  //function for sections
  List<PieChartSectionData> buildDonutChartSection(DonutChartViewModel vm) {
    return List.generate(vm.chartData.length, (index) {
      final data = vm.chartData[index];
      final isSelected =
          index == vm.selectedIndex; //it check that it is selected or not
      return PieChartSectionData(
        value: data.value.toDouble(),
        radius: isSelected ? 70.r : 60.r,

        color: vm.getColorForCategory(data.category),
        title: "${data.value}\n (${data.percentage.toStringAsFixed(0)}%)",
        titleStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      );
    });
  }

  //  PieChartSectionData(
  //       value: 40,
  //       radius: 50,
  //       color: Colors.blue,
  //       title:
  //          "this is me "
  //       titleStyle: const TextStyle(
  //         color: Colors.white,
  //         fontSize: 12,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     );
  //widget for legned
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
