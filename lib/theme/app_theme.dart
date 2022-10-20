import 'package:flutter_components/Screens/screens_imports.dart';

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
      primaryColor: Colors.pink.shade300,
      appBarTheme: AppBarTheme(color: Colors.pink.shade400, elevation: 0.0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: textButtom),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 0.0),
      ));
}
