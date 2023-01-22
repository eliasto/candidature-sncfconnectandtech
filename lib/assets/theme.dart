import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData sncfConnectTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: darkColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: secondaryColor),
    textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Avenir'),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkColor,
      selectedItemColor: secondaryColor,
      unselectedItemColor: grayColor,
      selectedIconTheme: IconThemeData(color: secondaryColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(
    centerTitle: false, elevation: 0, backgroundColor: primaryColor);
