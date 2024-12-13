import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../Register/RegisterScreen.dart';


class signupbutton extends StatelessWidget {
  const signupbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 20,),
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
                  image: const AssetImage(TImages.google),
                ),
              ),
            ),
            const SizedBox(width: 10,),
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
            const SizedBox(width: 10,),
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
        const SizedBox(height: 28,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TTexts.loginsubTitle,
                style: TextStyle(
                  color: TColors.loginText1,
                  fontSize: TSizes.fontSizeSm.sp,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen() ,));
                },
                child: Text(
                  TTexts.signUp,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: TColors.primary,
                    fontSize: TSizes.fontSizeSm.sp,
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