class BarchartModel {
  final String month;
  final int shelter;
  final int food;
  final int medical;
  final int clothing;
  final int other;
  //constructor of it
  BarchartModel({
    required this.month,
    required this.shelter,
    required this.food,
    required this.medical,
    required this.clothing,
    required this.other,
  });
  //now to add all the values of the item of every moth we have to make a function
  int get total => shelter + food + medical + clothing + other;
}
// example for this model :
// BarChartModle(
//   month: 'Jan',
//   shelter: 10,
//   food: 20,
//   medical: 15,
//   clothing: 5,
//   other: 10,
// );

// // total = 60
