import 'package:first_app/views/creater/admin_DashBoard/widgets/donut_chart_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/stacked_bar_chart_view.dart';
import 'package:flutter/material.dart';

class DummyclassView extends StatefulWidget {
  const DummyclassView({super.key});

  @override
  State<DummyclassView> createState() => _DummyclassViewState();
}

class _DummyclassViewState extends State<DummyclassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: DonutChartView());
  }
}
