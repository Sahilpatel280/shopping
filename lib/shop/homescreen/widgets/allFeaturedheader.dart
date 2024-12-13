import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class allFeatureheader extends StatelessWidget {
  const allFeatureheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22,right: 21),
      child: Row(
        children: [
          Text(
            "All Featured",
            style: TextStyle(
              fontSize: TSizes.fontSizeLg.sp,
              fontWeight: FontWeight.w600,
              fontFamily:" Montserrat",
              color: TColors.black,
            ),
          ),
          SizedBox(width: 79,),
          Container(
            height: 24.h,
            width: 61.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: TColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sort",
                    style: TextStyle(
                        color: TColors.black,fontSize: TSizes.fontSizeXs,fontWeight: FontWeight.w400
                    ),),
                  SizedBox(width: 4,),
                  Icon(Icons.swap_vert,size: 16,)
                ],
              ),
            ),
          ),
          SizedBox(width: 12,),
          Container(
            height: 24.h,
            width: 67.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: TColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                        color: TColors.black,fontSize: TSizes.fontSizeXs,fontWeight: FontWeight.w400
                    ),),
                  SizedBox(width: 4,),
                  Icon(Icons.filter_alt,size: 16,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}