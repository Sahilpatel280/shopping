import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class searchbarbutton extends StatelessWidget {
  const searchbarbutton({
    super.key, required this.text,
  });


  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          height: 40.h,
          width: 343.w,
          decoration: BoxDecoration(
            color: TColors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: Row(
              children: [
                Icon(Icons.search,color: TColors.homeserchbarcolorall,),
                SizedBox(width: 10.w,),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: TSizes.fontSizeXs.sp,
                    color: TColors.homeserchbarcolorall,
                  ),
                ),
                Spacer(),
                Icon(Icons.mic,color: TColors.homeserchbarcolorall,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}