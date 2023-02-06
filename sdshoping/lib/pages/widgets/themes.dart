import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyTheme {
 static ThemeData  lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24),
          elevation: 0.0,
        ),
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      );
 static ThemeData  darkTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 0, 0, 0),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
          fontSize: 24),
          elevation: 0.0,
        ),
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      );
}