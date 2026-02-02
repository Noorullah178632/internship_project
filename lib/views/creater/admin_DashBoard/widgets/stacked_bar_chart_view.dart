import 'package:first_app/models/barchart_model.dart';
import 'package:first_app/view_models/barChart_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StackedBarChartView extends StatelessWidget {
  const StackedBarChartView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
      create: (_) => BarchartViewModel(),
      child: Consumer<BarchartViewModel>(
        builder: (context, barChatVM, child) {
          return Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            width: screenWidth,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Listings by Category",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    height: 1.5,
                    letterSpacing: 1,
                    color: Color(0XFF505050),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                //  Container(height: ,),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      borderData: FlBorderData(show: false),
                      maxY: 100,
                      minY: 0,
                      gridData: FlGridData(show: false),
                      //to touch the bar
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                          tooltipPadding: const EdgeInsets.all(8),
                          tooltipMargin: 8,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              '${barChatVM.chartData[group.x.toInt()].month}\n',
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Total: ${barChatVM.chartData[group.x.toInt()].total}',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      //to show the title values (maxY and minY)
                      titlesData: FlTitlesData(
                        //for right
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        //for top title
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),

                        //for left
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 20,
                            reservedSize: 40, //space between text and graph
                            //to design the text
                            getTitlesWidget: (value, meta) {
                              return Text(
                                value.toInt().toString(),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 7,
                                  height: 2,
                                  color: Color(0XFF505050),
                                ),
                              );
                            },
                          ),
                        ),

                        //for bottom title
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              if (value.toInt() >= 0 &&
                                  value.toInt() < barChatVM.chartData.length) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    barChatVM.chartData[value.toInt()].month,

                                    style: GoogleFonts.poppins(
                                      fontSize: 7,
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                      color: Color(0XFF505050),
                                    ),
                                  ),
                                );
                              }
                              return SizedBox();
                            },
                          ),
                        ),
                      ),
                      barGroups: _buildBarGroups(barChatVM.chartData),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                _buildLegend(),
              ],
            ),
          );
        },
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups(List<BarchartModel> data) {
    return List.generate(data.length, (index) {
      final item = data[index];
      return BarChartGroupData(
        x: index,

        barRods: [
          BarChartRodData(
            toY: item.total.toDouble(), //addition of all the values
            borderRadius: BorderRadius.circular(20),
            width: 10,
            rodStackItems: [
              BarChartRodStackItem(
                0, //start of the bar
                item.shelter.toDouble(), //end of the bar
                Color(0XFF77ABFF),
              ),
              BarChartRodStackItem(
                item.shelter.toDouble(),
                (item.shelter + item.food).toDouble(),
                Color(0XFF3BB48C),
              ),
              BarChartRodStackItem(
                (item.shelter + item.food).toDouble(),
                (item.shelter + item.food + item.medical).toDouble(),
                Color(0XFFFF7C7C),
              ),
              BarChartRodStackItem(
                (item.shelter + item.food + item.medical).toDouble(),
                (item.shelter + item.food + item.medical + item.clothing)
                    .toDouble(),
                Color(0XFFFFC86C),
              ),
              BarChartRodStackItem(
                (item.shelter + item.food + item.medical + item.clothing)
                    .toDouble(),
                (item.shelter +
                        item.food +
                        item.medical +
                        item.clothing +
                        item.total)
                    .toDouble(),
                Color(0XFFA2ABB9),
              ),
            ],
          ),
        ],
      );
    });
  }

  //widget to wrap the legend
  Widget _buildLegend() {
    return Wrap(
      runSpacing: 60,
      spacing: 8,
      alignment: WrapAlignment.center,
      children: [
        _buildLegendItem(label: "Shelter", color: Color(0XFF77ABFF)),
        _buildLegendItem(label: "Food", color: Color(0XFF3BB48C)),
        _buildLegendItem(label: "Medical", color: Color(0XFFFF7C7C)),
        _buildLegendItem(label: "Clothing", color: Color(0XFFFFC86C)),
        _buildLegendItem(label: "Other", color: Color(0XFFA2ABB9)),
      ],
    );
  }

  //widget for legend item
  Widget _buildLegendItem({required String label, required Color color}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 9,
            height: 1.5,
            color: Color(0XFF505050),
          ),
        ),
      ],
    );
  }
}
