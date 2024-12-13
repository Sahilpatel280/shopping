import 'package:flutter/material.dart';

import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_filed_theme.dart';
import 'custom_theme/text_theme.dart';


class SAppTheme{


  SAppTheme._();


  ///Lights Theme

  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,
    primaryColor:Colors.blue,
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: Colors.white,
    brightness:Brightness.light,
    textTheme: TTextTheme.lighttheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFromFilledTheme.lightInputDecorationTheme,
  );



  ///DarkTheme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Montserrat",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darktheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFromFilledTheme.darkInputDecorationTheme,

  );




}