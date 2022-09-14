import 'package:flutter/material.dart';

class AppTheme {

  static final Color primary = Colors.indigo.shade800;
  static final Color secondary = Colors.amber.shade800;


  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: Colors.amber,

    //Tema de APPBAR
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: primary
    ),

    //TEMA DE TEXTBUTTONS
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: secondary )
    ),

    //TEMA DE FLOATINGACTIONBUTTON
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: secondary,
    ),

    //TEMA DEL ELEVEATED BUTTON
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: StadiumBorder(),
        elevation: 0
      )
    ),

    //TEMA PARA LOS INPUTS
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary
      ),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
      ),
 
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide( color: Colors.green ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
      ),

    )

  );
  
}