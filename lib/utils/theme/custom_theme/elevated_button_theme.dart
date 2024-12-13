import 'package:flutter/material.dart';

class TElevatedButtonTheme{

  TElevatedButtonTheme._();


    static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFFF83758),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        side: const BorderSide(color: Color(0xFFF83758)),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 16, color: Colors.white,fontWeight:FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Color(0xFFF83758),
      backgroundColor:Color(0xFFF83758),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Color(0xFFF83758)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white,fontWeight:FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

}