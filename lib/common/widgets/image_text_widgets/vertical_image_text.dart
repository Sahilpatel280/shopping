import 'package:flutter/material.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';

class VerticalImageText extends StatelessWidget {
  const
  VerticalImageText({super.key, this.onTap, required this.title, required this.image});


  final void Function()? onTap;
  final String title,image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image),fit: BoxFit.cover,),
              ),
            ),
            /// Text
            SizedBox(height: 4),
            Text(
              title, style: TextStyle(color: TColors.black,fontSize: 10,fontWeight: FontWeight.w400,fontFamily: "Montserrat"),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,

            ),
          ],
        ),
      ),
    );
  }
}
