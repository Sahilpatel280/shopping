import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Logoandsignbutton extends StatelessWidget {
  const Logoandsignbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "- OR Continue With -",
            style: TextStyle(
              fontSize: TSizes.fontSizeXs.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Montserrat",
              color: TColors.loginText1,
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                  color: TColors.iconBackground,
                  border: Border.all(color: TColors.primary),borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: (){},
                icon: Image(
                  width: 24,
                  height:24,
                  image: AssetImage(TImages.google),
                ),
              ),
            ),
            SizedBox(width: 10.h,),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(color: TColors.iconBackground,
                  border: Border.all(color: TColors.primary),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: (){},
                icon: Image(
                  width: 24,
                  height:24,
                  image: AssetImage(TImages.apple),
                ),
              ),
            ),
            SizedBox(width: 10.w,),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                  color: TColors.iconBackground,
                  border: Border.all(color: TColors.primary),borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: (){},
                icon: Image(
                  width: 24,
                  height:24,
                  image: AssetImage(TImages.facebook),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 28,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I Already Have an Account",
                style: TextStyle(
                  color: TColors.loginText1,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(

                  "Login",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: TColors.primary,
                    fontSize: 14.sp,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ]
        ),
      ],
    );
  }
}
