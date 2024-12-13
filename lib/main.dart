import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/Screen/splash_screen.dart';

import 'Screen/cartdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
       designSize: Size(380,700),
       minTextAdapt: true,
       splitScreenMode: true,
       builder: (context, child) {
         return MaterialApp(
             debugShowCheckedModeBanner: false,
             home: SplashScreen(),
         );
       },
    );
  }
}
