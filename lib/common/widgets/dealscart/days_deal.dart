import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';


class Dayofdeals extends StatelessWidget {
  Dayofdeals({super.key, required this.title, required this.subtitle, required this.icondata, required this.clickicon, required this.icon});

  final String title;
  final IconData icon;
  final String subtitle;
  final String icondata;
  final IconData clickicon;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          height: 63,
          width: 343,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: TColors.homeAppbartitleColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: TColors.white,
                        fontSize: TSizes.fontSizeMd.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    Row(
                      children: [
                        Icon(icon,size: 16,color: TColors.white,),
                        SizedBox(width: 2,),
                        Text(
                          subtitle,
                          style: TextStyle(
                              fontSize: TSizes.fontSizeXs.sp,
                              fontWeight: FontWeight.w400,
                              color: TColors.white,
                              fontFamily: "Montserrat"
                          ),
                        )
                      ],
                    )
                  ],
                ),


                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: TColors.white,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: TColors.homeAppbartitleColor,
                    alignment: Alignment.center,
                  ), child: Row(
                    children: [
                      Text(
                        icondata ,
                        style: TextStyle(
                          fontSize: TSizes.fontSizeXs,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          color: TColors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(clickicon as IconData?,size: 16,color: TColors.white,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
