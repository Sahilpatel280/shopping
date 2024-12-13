import 'package:flutter/material.dart';


class TOutlinedButtonTheme{

 TOutlinedButtonTheme._();

 static final lightOutlinedButtonTheme = OutlinedButtonThemeData(

   style: OutlinedButton.styleFrom(
     elevation: 0,
     foregroundColor: Colors.black,
     side:const BorderSide(color: Color(0xFFF83758)),
     textStyle: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),
     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
   ),

 );

 static final darkOutlinedButtonTheme = OutlinedButtonThemeData(

   style: OutlinedButton.styleFrom(
     elevation: 0,
     foregroundColor: Colors.white,
     side:const BorderSide(color: Color(0xFFF83758)),
     textStyle: const TextStyle(color: Color(0xFFF83758),fontSize: 16,fontWeight: FontWeight.w600),
     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
   ),

 );

}