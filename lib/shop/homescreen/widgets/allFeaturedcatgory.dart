import 'package:flutter/material.dart';
import 'package:listtileviewdesign/utils/constants/image_strings.dart';

import '../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class allFeaturecategory extends StatelessWidget {
   allFeaturecategory({
    super.key,
  });

  List<dynamic> imageList = [
    TImages.beauty,
    TImages.fashion,
    TImages.kids,
    TImages.men,
    TImages.womens,
    TImages.beauty,
    TImages.fashion,
    TImages.kids,
    TImages.men,
    TImages.womens,
  ];
   List<dynamic> titleList = [
     "Beauty",
     "Fashion",
     "Kids",
     "Mens",
     "Women",
     "Beauty",
     "Fashion",
     "Kids",
     "Mens",
     "Women",
   ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount:titleList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return VerticalImageText(
                  title:titleList[index] ,
                  image: imageList[index] ,
                );
              }),
        ),
      ],
    );
  }
}


