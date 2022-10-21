import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final Color primary = Colors.pink.shade300;
  static final Color textButtom = Colors.pinkAccent.shade200;
  static final ThemeData lighTheme = ThemeData.light().copyWith(
    primaryColor: Colors.pink.shade300,
    appBarTheme: AppBarTheme(color: Colors.pink.shade300, elevation: 0.0),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: textButtom),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: Colors.pink.shade300,
    appBarTheme: AppBarTheme(
        color: Colors.pink.shade400,
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.pink[400])),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: textButtom),
    ),
    //*elevatede button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.primary,
        shape: const StadiumBorder(),
        elevation: 0.0,
        foregroundColor: Colors.white,
      ),
    ),
    //*input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );
}
