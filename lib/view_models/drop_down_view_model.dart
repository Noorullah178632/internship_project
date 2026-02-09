import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/widgets.dart';

class DropDownViewModel extends ChangeNotifier {
  // ============== CATEGORY ==============
  String _selectedCategory = "Category";

  final List<DropDownModel> _options = [
    DropDownModel(id: '0', value: 'Category'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedValue => _selectedCategory;
  List<DropDownModel> get options => _options;

  void updateSelectedValue(String newValue) {
    _selectedCategory = newValue;
    notifyListeners();
  }

  // ============== LOCATION ==============
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

  // ============== STATUS ==============
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
  List<DropDownModel> get statusOptions => _statusOptions;

  void updateSelectedStatus(String newValue) {
    _selectedStatus = newValue;
    notifyListeners();
  }

  // ============== DATE ADDED ==============
  String _selectedDateAdded = "Date Added";

  final List<DropDownModel> _dateAddedOptions = [
    DropDownModel(id: '0', value: 'Date Added'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedDateAdded => _selectedDateAdded;
  List<DropDownModel> get dateAddedOptions => _dateAddedOptions;

  void updateSelectedDateAdded(String newValue) {
    _selectedDateAdded = newValue;
    notifyListeners();
  }

  // ============== RESET ALL FILTERS ==============
  void resetAllFilters() {
    _selectedCategory = "Category";
    _selectedLocation = "Location";
    _selectedStatus = "Status";
    _selectedDateAdded = "Date Added";
    notifyListeners();
  }
}
