import 'package:first_app/models/bar_chart_model2.dart';

import 'package:flutter/material.dart';

class BarChartViewModel2 extends ChangeNotifier {
  List<BarChartModel2> _data = [];
  List<BarChartModel2> get data => _data;

  void loadFunction() {
    _data = <BarChartModel2>[
      BarChartModel2("Mon", 55, 20),
      BarChartModel2("Tue", 70, 30),
      BarChartModel2("Wed", 45, 60),
      BarChartModel2("Thu", 45, 90),
      BarChartModel2("Fri", 35, 70),
      BarChartModel2("Sat", 95, 15),
      BarChartModel2("Sun", 20, 20),
    ];
    notifyListeners();
  }

  BarChartViewModel2() {
    loadFunction();
  }
}
