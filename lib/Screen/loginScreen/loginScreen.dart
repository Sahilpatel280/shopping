import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/Screen/loginScreen/widgets/loginFrom.dart';
import 'package:listtileviewdesign/Screen/loginScreen/widgets/signupbutton.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';
import 'package:listtileviewdesign/utils/constants/sizes.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen ({super.key});


  final _formkey =GlobalKey();
  final emailController =TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(right: 26.w,left: 29.w,top: 63.h),
            child: Column(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        TTexts.loginTitle,
                        style: TextStyle(
                          color: TColors.loginTitleTextHeading,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize:TSizes.fontSizehd.sp,
                        ),
                      ),
                    ),
                  ],
                ),
               const SizedBox(height: 36,),

                /// From login Screen
                loginfrom(),
                const SizedBox(height: 75,),

                /// logo,footer,signupbutton
                const signupbutton(),
                  ],
                ),

        ),
      ),
    );
  }
}




