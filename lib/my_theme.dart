import 'package:flutter/material.dart';

class MyTheme {
  static const Color blackColor = Color(0xff242424);
  static const Color goldColor = Color(0xffB7935F);
static const primeDarkColor=Color(0xff141A2E);
static const onPrimeDarkColor=Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(

    canvasColor: goldColor,colorScheme: ColorScheme(brightness:Brightness.light,
      primary: goldColor,
      onPrimary: Colors.white,
      secondary: blackColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: blackColor,
      surface: Colors.red,
      onSurface: Colors.white),
    textTheme: TextTheme(
      displaySmall: TextStyle(fontSize: 25,color: blackColor),
        displayLarge: TextStyle(
      color: MyTheme.blackColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor, unselectedItemColor: Colors.white70),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.white70,
      elevation: 0.0,
    ),
  );

  static ThemeData darkTheme = ThemeData(

    canvasColor: primeDarkColor,
    colorScheme: ColorScheme(
        brightness:Brightness.light,
      primary: primeDarkColor,
      onPrimary: onPrimeDarkColor,
      secondary: blackColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: blackColor,
      surface: Colors.red,
      onSurface: Colors.white),
    textTheme: TextTheme(
        displaySmall: TextStyle(fontSize: 25,color: onPrimeDarkColor),
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: onPrimeDarkColor,
        unselectedItemColor: Colors.white70),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: Colors.white70,
      elevation: 0.0,
    ),
  );





}
