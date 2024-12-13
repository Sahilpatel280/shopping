import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/Screen/Register/widgets/Registerfrom.dart';
import 'package:listtileviewdesign/Screen/Register/widgets/logoandsignbutton.dart';
import 'package:listtileviewdesign/utils/constants/sizes.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';

import '../../utils/constants/colors.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});


  final _formkey =GlobalKey();
  final emailController =TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 29.w,left: 29.w,top: 63.h),
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      TTexts.registerTitle,
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
              SizedBox(height: 33.h,),

              Registerfrom(),

              ///logo and loginbutton
              SizedBox(height: 33.h,),
              Logoandsignbutton(),

            ],
          ),
        ),
      ),
    );
  }
}
