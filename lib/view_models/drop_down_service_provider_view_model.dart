import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class DropDownServiceProviderViewModel extends ChangeNotifier {
  String _selectedAll = "All";

  final List<DropDownModel> _optionsAll = [
    DropDownModel(id: '0', value: 'All'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedAll => _selectedAll;
  List<DropDownModel> get options => _optionsAll;

  void updateSelectedValue(String newValue) {
    _selectedAll = newValue;
    notifyListeners();
  }

  // ============== Pending ==============
  String _selectedPending = "Pending";

  final List<DropDownModel> _pendingOptions = [
    DropDownModel(id: '0', value: 'Pending'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedPending => _selectedPending;
  List<DropDownModel> get locationOptions => _pendingOptions;

  void updateSelectedPending(String newValue) {
    _selectedPending = newValue;
    notifyListeners();
  }

  // ============== Approved ==============
  String _selectedApproved = "Approved";

  final List<DropDownModel> _approvedOptions = [
    DropDownModel(id: '0', value: 'Approved'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedApproved => _selectedApproved;
  List<DropDownModel> get statusOptions => _approvedOptions;

  void updateSelectedApproved(String newValue) {
    _selectedApproved = newValue;
    notifyListeners();
  }

  // ============== Rejected ==============
  String _selectedRejected = "Rejected";

  final List<DropDownModel> _rejectedOptions = [
    DropDownModel(id: '0', value: 'Rejected'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedRejected => _selectedRejected;
  List<DropDownModel> get dateAddedOptions => _rejectedOptions;

  void updateSelectedRejected(String newValue) {
    _selectedRejected = newValue;
    notifyListeners();
  }
}
