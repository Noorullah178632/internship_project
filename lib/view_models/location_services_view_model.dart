import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class LocationServicesViewModel extends ChangeNotifier {
  // ============== Service type ==============
  String _selectedService = "ServiceType";

  final List<DropDownModel> _serviceOptions = [
    DropDownModel(id: '0', value: 'ServiceType'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedService => _selectedService;
  List<DropDownModel> get serviceOptions => _serviceOptions;

  void updateSelectedService(String newValue) {
    _selectedService = newValue;
    notifyListeners();
  }

  // ============== City Region  ==============
  String _selectedRegion = "City Region";

  final List<DropDownModel> _regionOptions = [
    DropDownModel(id: '0', value: 'City Region'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedRegion => _selectedRegion;
  List<DropDownModel> get regionOptions => _regionOptions;

  void updateSelectedRegion(String newValue) {
    _selectedRegion = newValue;
    notifyListeners();
  }

  // ============== Option1 ==============
  String _selectedAvailability = "Availability";

  final List<DropDownModel> _availabiltyOptions = [
    DropDownModel(id: '0', value: 'Availability'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedAvailability => _selectedAvailability;
  List<DropDownModel> get availabiltyOptions => _availabiltyOptions;

  void updateSelectedAvailability(String newValue) {
    _selectedAvailability = newValue;
    notifyListeners();
  }

  // ============== VarificationStatus ==============
  String _selectedVarificationStatus = "Varification Status";

  final List<DropDownModel> _varificationOptions = [
    DropDownModel(id: '0', value: 'Varification Status'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedVarificationStatus => _selectedVarificationStatus;
  List<DropDownModel> get varificationOptions => _varificationOptions;

  void updateSelectedVarificationStatus(String newValue) {
    _selectedVarificationStatus = newValue;
    notifyListeners();
  }
}
