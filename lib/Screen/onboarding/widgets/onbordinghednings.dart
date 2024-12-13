import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';

import 'onboardingcontroller.dart';

class onboardingHeading extends StatelessWidget {
  const onboardingHeading({
    super.key,
    required this.controller,
  });

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(()=> Align(
          alignment: Alignment.topLeft,
          child: Text(
            '${controller.currentPageIndex.value + 1 } /3 ',
          ),
        ),
        ),
        TextButton(
          onPressed: () => OnBoardingController.instance.Skippage(),
          child:const Text("Skip",style: TextStyle(color: TColors.skipButton),),
        ),
      ],
    );
  }
}