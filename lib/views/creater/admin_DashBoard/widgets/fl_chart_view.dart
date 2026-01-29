import 'package:first_app/view_models/linechart_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FlChartView extends StatelessWidget {
  const FlChartView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (_) => LinechartViewModel(),
      child: Consumer<LinechartViewModel>(
        builder: (context, chatVm, child) {
          return Container(
            width: screenWidth,
            height: screenHeight * 0.4,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Text(
                  "User Activity",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    height: 1.4,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Color(0XFF505050),
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.09,
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(
                        show: false,
                      ), //x_axis and y_axis numbers
                      gridData: FlGridData(show: false), //background grid lines
                      borderData: FlBorderData(
                        show: false,
                      ), //border of the chart
                      //line bar data
                      lineBarsData: [
                        LineChartBarData(
                          //points on the graph
                          spots: chatVm.getChartData(),
                          isCurved: true, //make line smooth
                          barWidth: 5,
                          color: Color(0XFFA5EFB5),
                          //it shows below area in line chart
                          // belowBarData: BarAreaData(
                          //   show: true,
                          //   color: Color(0xFF81C784).withOpacity(0.3),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ['1D', '1W', '1M', '1Y', 'ALL']
                      .map(
                        (p) => _buildContainerButton(
                          p,
                          chatVm.period == p,
                          () => chatVm.selectedPeriod(p),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  //make a widget for container or button
  Widget _buildContainerButton(
    String text,
    bool isSelected,
    VoidCallback callback,
  ) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Color(0XFFF6F7F9),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              height: 1.5,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
