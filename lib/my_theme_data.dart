import 'package:flutter/material.dart';
import 'package:to_do/app_colors.dart';

class MythemeData{
  static final ThemeData lighttheme=ThemeData(
    primaryColor:Appcolors.primarycolor,
    scaffoldBackgroundColor: Appcolors.bglightcolor,
    appBarTheme: AppBarTheme(
      backgroundColor: Appcolors.primarycolor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )
      )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Appcolors.primarycolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
        side: BorderSide(color: Appcolors.whitecolor,
        width: 4),
      ),
    ),
  );
}