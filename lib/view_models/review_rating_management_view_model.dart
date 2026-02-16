import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class ReviewRatingManagementViewModel extends ChangeNotifier {
  //my services
  String _selectedServices = "By Services";

  final List<DropDownModel> _serviceOptions = [
    DropDownModel(id: '0', value: 'By Services'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedServices => _selectedServices;
  List<DropDownModel> get serviceOptions => _serviceOptions;

  void updateSelectedServices(String newValue) {
    _selectedServices = newValue;
    notifyListeners();
  }

  //byUser
  String _selectedUser = "By User";

  final List<DropDownModel> _usersOptions = [
    DropDownModel(id: '0', value: "By User"),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedUser => _selectedUser;
  List<DropDownModel> get usersOptions => _usersOptions;

  void updateSelectedUser(String newValue) {
    _selectedUser = newValue;
    notifyListeners();
  }

  //byRating
  String _selectedRating = "By Rating";

  final List<DropDownModel> _ratingOptions = [
    DropDownModel(id: '0', value: 'By Rating'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedRating => _selectedRating;
  List<DropDownModel> get ratingOptions => _ratingOptions;

  void updateSelectedRating(String newValue) {
    _selectedRating = newValue;
    notifyListeners();
  }

  //status
  String _selectedStatus = "By Status";

  final List<DropDownModel> _statusgOptions = [
    DropDownModel(id: '0', value: 'By Status'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedStatus => _selectedStatus;
  List<DropDownModel> get statusgOptions => _statusgOptions;

  void updateSelectedStatus(String newValue) {
    _selectedStatus = newValue;
    notifyListeners();
  }

  //dataRange
  String _selectedDataRange = "By DataRange";

  final List<DropDownModel> _dataRangeOptions = [
    DropDownModel(id: '0', value: 'By DataRange'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedDataRange => _selectedDataRange;
  List<DropDownModel> get dataRangeOptions => _dataRangeOptions;

  void updateSelectedDataRange(String newValue) {
    _selectedDataRange = newValue;
    notifyListeners();
  }
}
