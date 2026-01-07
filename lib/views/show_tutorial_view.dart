import 'package:flutter/material.dart';

class ShowTutorialView extends StatefulWidget {
  const ShowTutorialView({super.key});

  @override
  State<ShowTutorialView> createState() => _ShowTutorialViewState();
}

class _ShowTutorialViewState extends State<ShowTutorialView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text('show tutorial view data')));
  }
}
