import 'package:flutter/material.dart';

class ChattingView extends StatefulWidget {
  const ChattingView({super.key});

  @override
  State<ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<ChattingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("Chatting view data")));
  }
}
