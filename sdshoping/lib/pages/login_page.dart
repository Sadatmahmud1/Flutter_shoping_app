import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "welcome to login page",
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
          )),
      );
  }
}