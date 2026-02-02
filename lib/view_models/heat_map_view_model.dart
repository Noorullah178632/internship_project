import 'package:first_app/models/heat_map_model.dart';
import 'package:flutter/material.dart';

class HeatMapViewModel extends ChangeNotifier {
  List<HeatMapModel> _heapList = [];
  // bool _isLoading = false;
  //use getter function to get the data
  List<HeatMapModel> get heapList => _heapList;
  // bool get isLoading => _isLoading;

  //get total activity for one day
  int getTotalActivity(HeatMapModel data) {
    return data.login + data.submission;
  }

  //get Intensity for one day that we would use in colors
  double getTotalIntensity(HeatMapModel data) {
    final TotalIntensity = getTotalActivity(data);
    if (TotalIntensity < 0) return 0.0;
    if (TotalIntensity < 5) return 0.2;
    if (TotalIntensity < 10) return 0.4;
    if (TotalIntensity < 15) return 0.6;
    if (TotalIntensity < 20) return 0.8;
    return 1.0;
  }

  // 1 step and 2 step : featchheapMapData() and store data in the list
  void fetchheatMapData() {
    // _isLoading = true;
    // notifyListeners();
    // Future.delayed(Duration(seconds: 1));
    //call the mock data
    _heapList = generateMockdata();
    notifyListeners();
    //again loading false
    // _isLoading = false;
  }

  //generate Mock Data for Heat map
  List<HeatMapModel> generateMockdata() {
    List<HeatMapModel> data = [];
    DateTime startDate = DateTime(2025, 1, 1);
    for (int i = 0; i < 365; i++) {
      //for forth month data will be shows
      DateTime date = startDate.add(
        Duration(days: i),
      ); //take a date(i) for 1 , then 2, then 3 and so on

      //
      if (date.weekday == DateTime.sunday ||
          date.weekday == DateTime.saturday) {
        continue;
      }
      data.add(
        HeatMapModel(
          dateTime: date,
          login: (i % 7) * 2,
          submission: (i % 7) * 3,
        ),
      );
    }
    return data;
  }

  //step 3: getDataforDate()
  HeatMapModel? getDataforDate(DateTime date) {
    //date=> here we pass the date
    try {
      //  data.dateTime.year: data => list , dateTime=>obj stored in that model (like 2025-01-05),year=> get the year
      //date.year=> gives the current year we passed
      return _heapList.firstWhere(
        (data) =>
            data.dateTime.year == date.year &&
            data.dateTime.month == date.month &&
            data.dateTime.day == date.day,
      );
    } catch (e) {
      return null;
    }
  }
}

//we have to acheive three task for Heap Map :
// 1 step : Get the Heap Map data => featchHeapMapData(),
// 2 step: Stored that data in the Heap list => take a heap list 
// 3 step : Get heap data for selected date=>getDataForDate(date)