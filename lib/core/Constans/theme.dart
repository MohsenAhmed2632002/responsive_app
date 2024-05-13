import 'package:flutter/material.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/Constans/Font.dart';

ThemeData getAppTheme({required BuildContext context}) {
  return ThemeData(
    useMaterial3: true,

    //////////////////

    cardTheme: CardTheme(
      elevation: Fontsize.s10,
    ),
/////////////////
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      elevation: Fontsize.s10,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: getBoldTextStyle(
        Colors.white,
        context: context,
      ),
    ),
    ////////////////////

    ////////////////////
    textTheme: TextTheme(
        titleMedium: getMediumTextStyle(
          Colors.grey,
          context: context,
        ),
        displayLarge: getBoldTextStyle(
          Colors.grey,
          context: context,
        )),
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: EdgeInsets.all(
    //     12,
    //   ),
    //   hintStyle: getRegulerTextStyle(
    //     Colors.grey,
    //     context: context,
    //   ),
    //   labelStyle: getRegulerTextStyle(
    //     Colors.grey,
    //     context: context,
    //   ),
    //   errorStyle: getMediumTextStyle(
    //     context: context,
    //     Colors.red,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: BorderSide(),
    //     borderRadius: BorderRadius.circular(
    //       8,
    //     ),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(),
    //     borderRadius: BorderRadius.circular(
    //       10,
    //     ),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderSide: BorderSide(),
    //     borderRadius: BorderRadius.circular(
    //       0,
    //     ),
    //   ),
    // ),
    fontFamily: FontConstants.fontFamily,
    //////////////////
  );
}
