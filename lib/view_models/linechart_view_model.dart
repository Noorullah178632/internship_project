import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LinechartViewModel extends ChangeNotifier {
  //this part will get the value of 1D,1W,1M,1Y,ALL
  String _period = "1D";
  String get period => _period;
  void selectedPeriod(String period) {
    _period = period;
    notifyListeners();
  }

  //Make a list for fspot point to show on the graph
  List<FlSpot> getChartData() {
    return [
      FlSpot(0, 3),
      FlSpot(1, 1),
      FlSpot(2, 4),
      FlSpot(3, 2),
      FlSpot(4, 5),
      FlSpot(5, 3),
    ];
  }
}
