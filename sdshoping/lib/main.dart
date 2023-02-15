import 'package:flutter/material.dart';
import 'package:sdshoping/pages/widgets/home_page.dart';
import 'package:sdshoping/pages/login_page.dart';
import 'package:sdshoping/pages/utils/myroutes.dart';
import 'package:sdshoping/pages/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false, //for hiding the debuging banner
      initialRoute: MyRoute.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
