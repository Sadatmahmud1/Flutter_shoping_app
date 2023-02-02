import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Sadat's";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("catalogue App")),
      ),
      body: Center(
        child: Container(
            child: Text('welcome to $name flutter app $days day course')),
      ),
      drawer: Drawer(),
    );
  }
}
