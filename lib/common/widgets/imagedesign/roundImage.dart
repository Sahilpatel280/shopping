import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const   TRoundedImage({
    super.key, required this.imageUrl, this.onPressed,  this.isNetworkImage = false,

  });

  final String imageUrl;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 343.w,
        height: 189.h,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: TColors.white,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
                fit:BoxFit.cover,image: isNetworkImage ? NetworkImage(imageUrl): AssetImage(imageUrl) as ImageProvider)),
      ),
    );
  }
}