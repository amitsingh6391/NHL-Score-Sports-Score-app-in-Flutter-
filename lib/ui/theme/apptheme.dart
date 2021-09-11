import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sports/core/page_transiton.dart';

//we will define our Apptheme class for definign our app themes;
class Apptheme {
  final BuildContext context;
  Apptheme(this.context);

  static const backgroundColor =
      // Color(0xff000000);

      Color(0xffffffff);
  static const secondaryColor = Color(0xfffdeff6);

  static const cardDarkColor = Color(0xfffFED32C);
  static const cardColorlight = Color(0xffFFF0B5);
  static const goalsCardColor = Color(0xFFFCF3DD);

  static const assentColor = Color(0xff101010);

  static const lightColor = Color.fromRGBO(
    142,
    142,
    142,
    0.5,
  );

  TextStyle lightText = GoogleFonts.poppins(
    color: lightColor,
    fontSize: 17,
  );

  TextStyle boldText = GoogleFonts.poppins(
    color: assentColor,
    fontWeight: FontWeight.w500,
  );

  TextStyle normalText = GoogleFonts.poppins(
    color: assentColor,
    fontWeight: FontWeight.w300,
  );

  static ThemeData theme = ThemeData(
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: RotationFadeTransitionBuilder(),
    }),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 10,
        color: Apptheme.assentColor,
      ),
      bodyText2: TextStyle(
        fontSize: 5,
        color: Apptheme.assentColor,
      ),
    ),
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: "Circular_Bold",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          cardColorlight,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 15,
            color: Apptheme.assentColor,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(
            34,
            50,
          ),
        ),
      ),
    ),
  );
}
