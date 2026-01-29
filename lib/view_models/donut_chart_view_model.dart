import 'package:first_app/models/donut_chart_model.dart';
import 'package:flutter/material.dart';

class DonutChartViewModel extends ChangeNotifier {
  //list for storing the value
  List<DonutChartModel> _chartData = [];
  //we will add all the values and generate a percentage
  int _totalValue = 0;
  //selected =-1 because it will be selected nothing . if we make it 0 . it will select the first item
  int _selectedIndex = -1;
  //use getter function to get the value
  List<DonutChartModel> get chartData => _chartData;
  int get totalValue => _totalValue;
  int get selectedIndex => _selectedIndex;

  void loadData() {
    final approved = 220;
    final pending = 48;
    final rejected = 38;

    _totalValue = approved + pending + rejected;

    _chartData = [
      DonutChartModel("Approved", approved, approved / _totalValue * 100),
      DonutChartModel("Pending", pending, pending / _totalValue * 100),
      DonutChartModel("Rejected", rejected, rejected / _totalValue * 100),
    ];
    notifyListeners();
  }

  //make a constructor to call this
  DonutChartViewModel() {
    loadData();
  }
  //another function for index
  void setTouchedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  //color selection according to the categories
  Color getColorForCategory(String color) {
    switch (color) {
      case "Approved":
        return Color(0XFF10B981);

      case "Pending":
        return Color(0XFFF59E0B);

      case "Rejected":
        return Color(0XFFEF4444);

      default:
        return Colors.grey;
    }
  }
}
