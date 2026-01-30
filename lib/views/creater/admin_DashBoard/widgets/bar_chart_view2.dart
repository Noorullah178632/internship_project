import 'package:first_app/view_models/bar_chart_view_model2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BarChartView2 extends StatelessWidget {
  const BarChartView2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (_) => BarChartViewModel2(),
      child: Consumer<BarChartViewModel2>(
        builder: (context, barVm, child) {
          return Container(
            width: screenWidth,
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, //grap space only that is required
              children: [
                Text(
                  "Bar Chart for Daily/Weekly Logins/Submissions",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    height: 1.5,
                    letterSpacing: 1,
                    color: Color(0XFF505050),
                  ),
                ),
                //graph
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.3,
                  child: BarChart(
                    BarChartData(
                      maxY: 100, //assign value to the graph
                      minY: 0,
                      borderData: FlBorderData(show: true),
                      barGroups: _buildBarGrounp(barVm),
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                          tooltipPadding: const EdgeInsets.all(8),
                          tooltipMargin: 8,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              '${barVm.data[group.x.toInt()].day}\n',
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Login:${barVm.data[group.x.toInt()].login}\n',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Submission:${barVm.data[group.x.toInt()].submissions}',
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

                      gridData: FlGridData(show: true),
                      titlesData: FlTitlesData(
                        //left title data
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 20,

                            getTitlesWidget: (value, meta) {
                              return Text(
                                value.toInt().toString(),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  height: 1,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              );
                            },
                          ),
                        ),
                        //for right
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),

                        //bottom title
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              //it will give use integers value
                              if (value.toInt() >= 0 &&
                                  value.toInt() < barVm.data.length) {
                                return Text(
                                  barVm.data[value.toInt()].day,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                );
                              }
                              return SizedBox();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //itembuild
                _buildLegend(),
              ],
            ),
          );
        },
      ),
    );
  }

  //make a function for bargroup data
  List<BarChartGroupData> _buildBarGrounp(BarChartViewModel2 vm) {
    return List.generate(vm.data.length, (index) {
      final data = vm.data[index];
      return BarChartGroupData(
        x: index, //index of the chart
        barRods: [
          BarChartRodData(
            toY: data.login.toDouble(),
            color: Color(0XFF629BF8),
            width: 7,
          ),
          BarChartRodData(
            toY: data.submissions.toDouble(),
            color: Color(0XFF6FD195),
            width: 7,
          ),
        ],
      );
    });
  }

  //make legends
  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _legendItem(Color(0XFF7086FD), "Logins"),
        SizedBox(width: 20),
        _legendItem(Color(0XFF6FD195), "Submissions"),
      ],
    );
  }

  Widget _legendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black12.withOpacity(0.2),
            ),
            color: color,
          ),
        ),
        SizedBox(width: 5),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
