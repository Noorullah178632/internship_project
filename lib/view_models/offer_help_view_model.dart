import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class OfferHelpViewModel extends ChangeNotifier {
  // ============== Rejected ==============
  String _selectedStatus = "Status";

  final List<DropDownModel> _statusOptions = [
    DropDownModel(id: '0', value: 'Status'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedStatus => _selectedStatus;
  List<DropDownModel> get statusOption => _statusOptions;

  void updateSelectedStatus(String newValue) {
    _selectedStatus = newValue;
    notifyListeners();
  }

  // ============== Help Type ==============
  String _selectedHelp = "Help Type";

  final List<DropDownModel> _helpOptions = [
    DropDownModel(id: '0', value: 'Help Type'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedHelp => _selectedHelp;
  List<DropDownModel> get helpOptions => _helpOptions;

  void updateSelectedHelp(String newValue) {
    _selectedHelp = newValue;
    notifyListeners();
  }

  // ============== Data Range ==============
  String _selectedDataRange = "Data Range";

  final List<DropDownModel> _dataRangeOptions = [
    DropDownModel(id: '0', value: 'Data Range'),
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

  // ============== Location ==============
  String _selectedLocation = "Location";

  final List<DropDownModel> _locationOptions = [
    DropDownModel(id: '0', value: 'Location'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedLocation => _selectedLocation;
  List<DropDownModel> get locationOptions => _locationOptions;

  void updateSelectedLocation(String newValue) {
    _selectedLocation = newValue;
    notifyListeners();
  }
}
