import 'package:flutter/material.dart';

class CrisisLineView extends StatefulWidget {
  const CrisisLineView({super.key});

  @override
  State<CrisisLineView> createState() => _CrisisLineViewState();
}

class _CrisisLineViewState extends State<CrisisLineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("Crisis Line view data")));
  }
}
