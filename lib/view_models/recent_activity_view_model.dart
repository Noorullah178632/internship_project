import 'package:flutter/material.dart';

class RecentActivityViewModel extends ChangeNotifier {
  //for All
  final List<String> allList = [
    'All',
    'Options 1',
    'Options 2',
    'Options 3',
    'Options 4',
    'Options 5',
  ];
  //for Settings
  final List<String> Listings = [
    'Listings',
    'Options 1',
    'Options 2',
    'Options 3',
    'Options 4',
    'Options 5',
  ];
  //for Logins
  final List<String> loginList = [
    'Logins',
    'Options 1',
    'Options 2',
    'Options 3',
    'Options 4',
    'Options 5',
  ];
  //for varification
  final List<String> varificationList = [
    'Varifications',
    'Options 1',
    'Options 2',
    'Options 3',
    'Options 4',
    'Options 5',
  ];
  String _selectedAll = 'All';
  String _selectedListings = 'Listings';
  String _selectedLogins = 'Logins';
  String _selectedVarifications = 'Varifications';

  String get selectedAll => _selectedAll;
  String get selectedListings => _selectedListings;
  String get selectedLogins => _selectedLogins;
  String get selectedVarifications => _selectedVarifications;

  void setAll(String value) {
    _selectedAll = value;
    notifyListeners();
  }

  void setListings(String value) {
    _selectedListings = value;
    notifyListeners();
  }

  void setLogins(String value) {
    _selectedLogins = value;
    notifyListeners();
  }

  void setVarifiactions(String value) {
    _selectedVarifications = value;
    notifyListeners();
  }
}
