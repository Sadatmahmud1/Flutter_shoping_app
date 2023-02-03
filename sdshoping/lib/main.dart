import 'package:flutter/material.dart';
import 'package:sdshoping/pages/widgets/home_page.dart';
import 'package:sdshoping/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdshoping/pages/utils/myroutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false, //for hiding the debuging banner
      initialRoute: MyRoute.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
