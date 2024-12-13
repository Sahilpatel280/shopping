import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/Navigation.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';
import 'package:listtileviewdesign/utils/constants/sizes.dart';

import '../shop/homescreen/homescreen.dart';
import '../utils/constants/image_strings.dart';

class Getstartscreen extends StatelessWidget {
  const Getstartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        Container(
          height: double.infinity.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage(TImages.background),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                  Colors.white.withOpacity(0.1),Colors.black.withOpacity(0.6),
                ],
                stops: [0.0,1],
                begin: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 552,left: 37,right: 38),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "You want \nAuthentic, here \n you go! ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 34.sp,
                      color: TColors.white,
                    ),
                  ),
                  const SizedBox(height: 14,),
                  Text(
                    textAlign: TextAlign.center,
                    "Find it here, buy it now!",
                    style: TextStyle(
                      fontSize: TSizes.fontSizeSm,
                      fontFamily:"Montserrat",
                      color:TColors.getstartText,
                    ),

                  ),
                  SizedBox(height: 44,),
                  Container(
                    height: 55.h,
                    width: 279.w,
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Navigation()),
                          );
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
