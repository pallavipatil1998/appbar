import 'package:flutter/material.dart';

class StatausTabPage extends StatefulWidget {
  const StatausTabPage({super.key});

  @override
  State<StatausTabPage> createState() => _StatausTabPageState();
}

class _StatausTabPageState extends State<StatausTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Call"),),
      body: Container(color: Colors.purple.shade200,),
    );
  }
}
