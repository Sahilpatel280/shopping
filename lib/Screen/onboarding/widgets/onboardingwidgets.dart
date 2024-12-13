import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/main.dart';
import 'package:listtileviewdesign/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';


class onBoardingwidgets extends StatelessWidget {
   onBoardingwidgets({
    super.key,
    this.title,
     this.subTitle,
     this.images,
  });

  var title;
  var subTitle;
  var images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top:110,left: 37,right: 38),
            child: Center(
              child:  Image.asset(images,height:300.h,width: 300.w,),
            )
        ),
        const SizedBox(height: 15,),
        Text(title,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w800,
            fontSize: 24.sp,
            color: TColors.headingTextColors,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: TColors.textColors,
          ),
        ),
      ],
    );
  }
}