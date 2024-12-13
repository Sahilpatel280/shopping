import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../common/widgets/imagedesign/roundImage.dart';

class TPromoSlider extends StatefulWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;
  @override
  State<TPromoSlider> createState() => _TPromoSliderState();
}

class _TPromoSliderState extends State<TPromoSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index,reason){
              setState((){
                activeIndex = index;
              });
            }
          ),
          items: widget.banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: widget.banners.length,
                effect: JumpingDotEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: TColors.primary,
                    dotColor: TColors.black
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}