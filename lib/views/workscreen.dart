import 'package:flutter/material.dart';

class Workscreen extends StatefulWidget {
  const Workscreen({super.key});

  @override
  State<Workscreen> createState() => _WorkscreenState();
}

class _WorkscreenState extends State<Workscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("This is me")));
  }
}
