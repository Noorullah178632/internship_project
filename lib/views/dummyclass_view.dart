import 'package:first_app/views/creater/admin_DashBoard/widgets/alert_notification_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/heat_map_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/quick_actions.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/recent_activity_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/submitted_form.dart';
import 'package:first_app/views/creater/detailed_profile_view.dart';
import 'package:flutter/material.dart';

class DummyclassView extends StatefulWidget {
  const DummyclassView({super.key});

  @override
  State<DummyclassView> createState() => _DummyclassViewState();
}

class _DummyclassViewState extends State<DummyclassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: DetailedProfileView(),
    );
  }
}
