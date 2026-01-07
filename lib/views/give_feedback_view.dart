import 'package:flutter/material.dart';

class GiveFeedbackView extends StatefulWidget {
  const GiveFeedbackView({super.key});

  @override
  State<GiveFeedbackView> createState() => _GiveFeedbackViewState();
}

class _GiveFeedbackViewState extends State<GiveFeedbackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text('give feedback view data')));
  }
}
