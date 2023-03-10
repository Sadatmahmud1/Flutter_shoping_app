import 'package:flutter/material.dart';
import 'package:sdshoping/pages/home_page.dart';
import 'package:sdshoping/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/Login",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/Login":(context) => LoginPage(),
      },
    );
  }
  
}