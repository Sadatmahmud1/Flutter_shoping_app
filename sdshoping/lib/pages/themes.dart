import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  
  static ThemeData lightTheme(BuildContext context) => ThemeData(
       primaryColor: Colors.grey,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          elevation: 0.0,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

 
 
 static ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    canvasColor: Colors.black,
    colorScheme: ColorScheme.fromSwatch(backgroundColor: Color.fromARGB(255, 247, 0, 197)),
    cardColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Color.fromARGB(255, 2, 0, 0),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      elevation: 0.0,
    ),
  );
}


  //Color
  static Color cream = const Color.fromARGB(255, 222, 224, 227);
  static Color darkBluishColor = const Color.fromARGB(255, 7, 30, 99);
  static Color lightBluishColor = Color.fromARGB(255, 29, 74, 180);
  static Color darkCreamColor = Vx.gray900;
}
