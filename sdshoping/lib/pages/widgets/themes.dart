import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyTheme {
 static ThemeData  lightTheme(BuildContext context) => ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24),
          elevation: 0.0,
        ),
        primaryColor: cream,
        cardColor: Colors.white,
        canvasColor: darkBluishColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
      
      );


 static ThemeData  darkTheme(BuildContext context) => ThemeData(
        // brightness: Brightness.dark,
       primaryColor: Color.fromARGB(255, 23, 23, 23),
       cardColor: darkBluishColor,
       canvasColor: Colors.white,
       iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      );

      //Color 
      static Color cream = const Color.fromARGB(255, 222, 224, 227);
      static Color darkBluishColor = Color.fromARGB(255, 2, 2, 47);

}