import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class ReportListViewModel extends ChangeNotifier {
  //for check box
  List checkBox = List.generate(10, (index) => false);

  // ============== OPTION1 ==============
  String _selectedOption1 = "Option1";
  final List<DropDownModel> _option1List = [
    DropDownModel(id: '0', value: 'Option1'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedOption1 => _selectedOption1;
  List<DropDownModel> get option1List => _option1List;

  void updateSelectedOption1(String newValue) {
    _selectedOption1 = newValue;
    notifyListeners();
  }

  //for status

  // ============== OPTION1 ==============
  String _selectedStatus = "status";
  final List<DropDownModel> _statusList = [
    DropDownModel(id: '0', value: 'status'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedStatus => _selectedStatus;
  List<DropDownModel> get statusList => _statusList;

  void updateSelectedStatus(String newValue) {
    _selectedStatus = newValue;
    notifyListeners();
  }
  //report type

  // ============== OPTION1 ==============
  String _selectedReport = "Report Type";
  final List<DropDownModel> _reportList = [
    DropDownModel(id: '0', value: 'Report Type'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedReport => _selectedReport;
  List<DropDownModel> get reportList => _reportList;

  void updateSelectedReport(String newValue) {
    _selectedReport = newValue;
    notifyListeners();
  }

  // ============== CATEGORY ==============
  String _selectedCategory = "Category";
  final List<DropDownModel> _categoryList = [
    DropDownModel(id: '0', value: 'Category'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedCategory => _selectedCategory;
  List<DropDownModel> get categoryList => _categoryList;

  void updateSelectedCategory(String newValue) {
    _selectedCategory = newValue;
    notifyListeners();
  }

  // ============== DATA RANGE ==============
  String _selectedDataRange = "Data Range";
  final List<DropDownModel> _dataRangeList = [
    DropDownModel(id: '0', value: 'Data Range'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedDataRange => _selectedDataRange;
  List<DropDownModel> get dataRangeList => _dataRangeList;

  void updateSelectedDataRange(String newValue) {
    _selectedDataRange = newValue;
    notifyListeners();
  }

  // ============== FEEDBACK TYPE ==============
  String _selectedFeedbackType = "Feedback Type";
  final List<DropDownModel> _feedbackTypeList = [
    DropDownModel(id: '0', value: 'Feedback Type'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedFeedbackType => _selectedFeedbackType;
  List<DropDownModel> get feedbackTypeList => _feedbackTypeList;

  void updateSelectedFeedbackType(String newValue) {
    _selectedFeedbackType = newValue;
    notifyListeners();
  }

  // ============== RESET ALL FILTERS ==============
  void resetAllFilters() {
    _selectedOption1 = "Option1";
    _selectedCategory = "Category";
    _selectedDataRange = "Data Range";
    _selectedFeedbackType = "Feedback Type";
    notifyListeners();
  }
}
