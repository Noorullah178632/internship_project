import 'package:first_app/models/barchart_model.dart';
import 'package:flutter/material.dart';

class BarchartViewModel extends ChangeNotifier {
  List<BarchartModel> _chartData = [];
  //to get this instance
  List<BarchartModel> get chartData => _chartData;
  //function

  BarchartViewModel() {
    loadData();
  }
  //functin
  List<BarchartModel> loadData() {
    return _chartData = [
      BarchartModel(
        month: 'Jan',
        shelter: 20,
        food: 25,
        medical: 19,
        clothing: 18,
        other: 23,
      ),
      BarchartModel(
        month: 'Feb',
        shelter: 15,
        food: 20,
        medical: 15,
        clothing: 20,
        other: 20,
      ),
      BarchartModel(
        month: 'Mar',
        shelter: 18,
        food: 22,
        medical: 17,
        clothing: 19,
        other: 19,
      ),
      BarchartModel(
        month: 'Apr',
        shelter: 22,
        food: 18,
        medical: 16,
        clothing: 15,
        other: 20,
      ),
      BarchartModel(
        month: 'May',
        shelter: 17,
        food: 16,
        medical: 20,
        clothing: 18,
        other: 21,
      ),
      BarchartModel(
        month: 'Jun',
        shelter: 12,
        food: 25,
        medical: 19,
        clothing: 18,
        other: 23,
      ),
      BarchartModel(
        month: 'Jul',
        shelter: 10,
        food: 14,
        medical: 12,
        clothing: 10,
        other: 15,
      ),
      BarchartModel(
        month: 'Aug',
        shelter: 19,
        food: 23,
        medical: 18,
        clothing: 17,
        other: 20,
      ),
      BarchartModel(
        month: 'Sep',
        shelter: 25,
        food: 20,
        medical: 15,
        clothing: 18,
        other: 22,
      ),
      BarchartModel(
        month: 'Oct',
        shelter: 21,
        food: 17,
        medical: 19,
        clothing: 20,
        other: 18,
      ),
      BarchartModel(
        month: 'Nov',
        shelter: 23,
        food: 19,
        medical: 17,
        clothing: 16,
        other: 20,
      ),
      BarchartModel(
        month: 'Dec',
        shelter: 18,
        food: 21,
        medical: 20,
        clothing: 19,
        other: 19,
      ),
    ];
  }
}
