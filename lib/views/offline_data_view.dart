import 'package:flutter/material.dart';

class OfflineDataView extends StatefulWidget {
  const OfflineDataView({super.key});

  @override
  State<OfflineDataView> createState() => _OfflineDataViewState();
}

class _OfflineDataViewState extends State<OfflineDataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("Offline data view ")));
  }
}
