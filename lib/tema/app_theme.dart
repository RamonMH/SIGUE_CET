import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Color(0xFF386641);
  static const Color second = Colors.black54;

  static final ThemeData lightTheme=ThemeData.light().copyWith(
    //Color primario
      primaryColor: Colors.indigoAccent,

      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
      ),

      //TextButton theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: second)
      ),

      //Elevated bottons Style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF386641),
            shape: const StadiumBorder(),
            elevation: 0
        ),
      ),

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
      ),
  );
}

class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Color(0xFF386641)
          ),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFF386641),
                width: 2
            )
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
            color: Colors.grey
        ),
        prefixIcon: prefixIcon != null
            ? Icon( prefixIcon, color: Color(0xFF386641) )
            : null
    );
  }

}