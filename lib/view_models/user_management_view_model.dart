import 'package:first_app/models/drop_down_model.dart';
import 'package:flutter/material.dart';

class UserManagementViewModel extends ChangeNotifier {
  // ============== Status ==============
  String _selectedStatus = "Status";

  final List<DropDownModel> _statusoptions = [
    DropDownModel(id: '0', value: 'Status'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedStatus => _selectedStatus;
  List<DropDownModel> get statusOptions => _statusoptions;

  void updateSelectedStatus(String newValue) {
    _selectedStatus = newValue;
    notifyListeners();
  }

  // ============== Role ==============
  String _selectedRole = "Role";

  final List<DropDownModel> _roleOptions = [
    DropDownModel(id: '0', value: 'Role'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedRole => _selectedRole;
  List<DropDownModel> get roleOption => _roleOptions;

  void updateSelectedRole(String newValue) {
    _selectedRole = newValue;
    notifyListeners();
  }

  // ============== Join Data ==============
  String _selectedJoinData = "JoinData";

  final List<DropDownModel> _joinDataoptions = [
    DropDownModel(id: '0', value: 'JoinData'),
    DropDownModel(id: '1', value: 'Option 1'),
    DropDownModel(id: '2', value: 'Option 2'),
    DropDownModel(id: '3', value: 'Option 3'),
    DropDownModel(id: '4', value: 'Option 4'),
    DropDownModel(id: '5', value: 'Option 5'),
  ];

  String get selectedJoinData => _selectedJoinData;
  List<DropDownModel> get joinDataOption => _joinDataoptions;

  void updateSelectedJoinData(String newValue) {
    _selectedJoinData = newValue;
    notifyListeners();
  }
}
