import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ProductCartVertical extends StatelessWidget {
  ProductCartVertical({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discount,
    required this.reviews,
  });


  var imageUrl;
  final String title;
  final String description;
  final String originalPrice;
  final String discountedPrice;
  final String discount;
  final String reviews;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 243,
        width: 170,
        decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child:
                Image(
                  image: imageUrl,
                  width: 170,
                  height: 124,
                )
            ),
            const SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: TColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: TSizes.fontSizeXs.sp,
                      fontFamily: "Montserrat",
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: TColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      fontFamily: "Montserrat",
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    originalPrice,
                    style: TextStyle(
                      color: TColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: TSizes.fontSizeXs.sp,
                      fontFamily: "Montserrat",
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        discountedPrice,
                        style: TextStyle(
                          color: TColors.homeserchbarcolorall,
                          fontWeight: FontWeight.w500,
                          fontSize: TSizes.fontSizeXs.sp,
                          fontFamily: "Montserrat",
                          decoration: TextDecoration.lineThrough,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(width: 2,),
                      Text(
                        discount,
                        style: TextStyle(
                          color: TColors.primary,
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: "Montserrat",
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RatingBarIndicator(
                          rating: 4.0,
                          itemSize: 14,
                          itemBuilder: (_,__) => Icon(Icons.star,color:TColors.ratingStarColors,)),
                      SizedBox(width: 3,),
                      Text(
                        reviews,
                        style: TextStyle(
                          color: TColors.ratingStarCountColors,
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: "Montserrat",
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}