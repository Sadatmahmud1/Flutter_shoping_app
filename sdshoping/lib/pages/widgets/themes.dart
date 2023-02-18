import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


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
      
        floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: const Color.fromARGB(255, 12, 0, 105),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        
       ),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
         backgroundColor: Color.fromARGB(255, 10, 0, 69), // set the background color
         foregroundColor: Color.fromARGB(255, 255, 255, 255), 
        )
      ),
      
      );


 static ThemeData  darkTheme(BuildContext context) => ThemeData(
        // brightness: Brightness.dark,
       primaryColor: Color.fromARGB(255, 5, 1, 23),
       cardColor: darkBluishColor,
       canvasColor: Colors.white,
       iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
       listTileTheme: ListTileThemeData(
        iconColor: context.cardColor,
        textColor: context.cardColor,
        ),
       floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 0, 157, 255),
        foregroundColor: context.canvasColor,
        
       ),
       elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
         backgroundColor: Color.fromARGB(255, 83, 75, 153), // set the background color
         foregroundColor: Color.fromARGB(255, 255, 255, 255), 
        )
      ),
     textTheme: TextTheme(
          titleLarge: const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold,color: Colors.amber),
        ), 
      );

      //Color 
      static Color cream = const Color.fromARGB(255, 222, 224, 227);
      static Color darkBluishColor = Color.fromARGB(255, 1, 1, 91);

}