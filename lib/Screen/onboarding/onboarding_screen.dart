import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:listtileviewdesign/Screen/cartdetails.dart';
import 'package:listtileviewdesign/Screen/onboarding/widgets/onboardingcontroller.dart';
import 'package:listtileviewdesign/Screen/onboarding/widgets/onboardingwidgets.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';
import 'package:listtileviewdesign/utils/constants/image_strings.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboardingbottomNav.dart';
import 'widgets/onbordinghednings.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {




  @override
  Widget build(BuildContext context) {


    final controller =Get.put(OnBoardingController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 17),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: onboardingHeading(controller: controller),
            ),
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged:controller.updatePageIndicator,
                children: [
                  onBoardingwidgets(
                      title: TTexts.onBoardingTittle1,
                      subTitle:TTexts.onBoardingSubTittle1,
                      images: TImages.onBoardingImage1,
                  ),
                  onBoardingwidgets(
                      title:TTexts.onBoardingTittle2,
                      subTitle:TTexts.onBoardingSubTittle1,
                      images: TImages.onBoardingImage2),
                  onBoardingwidgets(
                      title: TTexts.onBoardingTittle3,
                      subTitle:TTexts.onBoardingSubTittle1,
                      images: TImages.onBoardingImage3),
                ],
              ),
            ),
            const SizedBox(height: 60,),

             onboardingbottomNav(controller: controller),

          ],
              ),
      ),
    );
  }
}







