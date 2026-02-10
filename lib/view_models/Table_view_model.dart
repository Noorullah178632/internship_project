import 'package:flutter/material.dart';

class CheckBoxViewModel extends ChangeNotifier {
  final List<bool> _checks = List.generate(10, (value) => false);
  List<bool> get check => _checks;
  void toggle(int index, bool value) {
    _checks[index] = value;
    notifyListeners();
  }

  // Service titles
  List<String> serviceTitles = [
    "Cleaning",
    "Plumbing",
    "Electrical",
    "Gardening",
    "Painting",
    "Carpentry",
    "Laundry",
    "Babysitting",
    "Delivery",
    "Tutoring",
  ];

  // Categories
  List<String> categories = [
    "Home",
    "Repair",
    "Electrical",
    "Outdoor",
    "Home",
    "Woodwork",
    "Household",
    "Childcare",
    "Logistics",
    "Education",
  ];

  // Providers
  List<String> providers = [
    "ABC Services",
    "QuickFix",
    "PowerTech",
    "GreenThumb",
    "ColorPro",
    "WoodMasters",
    "CleanKing",
    "NannyCare",
    "FastDelivery",
    "TutorPlus",
  ];

  // Locations
  List<String> locations = [
    "Peshawar",
    "Charsadda",
    "Islamabad",
    "Lahore",
    "Karachi",
    "Quetta",
    "Faisalabad",
    "Multan",
    "Hyderabad",
    "Sialkot",
  ];

  // Statuses
  List<String> statuses = [
    "Pending",
    "Approved",
    "Rejected",
    "Pending",
    "Approved",
    "Rejected",
    "Pending",
    "Approved",
    "Rejected",
    "Pending",
  ];

  // Status Colors
  List<Color> statusColors = [
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.orange,
  ];

  // Added Dates
  List<String> addedDates = [
    "2026-01-01",
    "2026-01-02",
    "2026-01-03",
    "2026-01-04",
    "2026-01-05",
    "2026-01-06",
    "2026-01-07",
    "2026-01-08",
    "2026-01-09",
    "2026-01-10",
  ];

  // Images
  List<String> images = List.generate(
    10,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );
}
