import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:listtileviewdesign/Screen/GetStartScreen.dart';
import 'package:listtileviewdesign/Screen/loginScreen/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import 'onboardingcontroller.dart';


class onboardingbottomNav extends StatefulWidget {
  const onboardingbottomNav({
    super.key,
    required this.controller,
  });

  static const String KEYLOGIN = "Login";

  final OnBoardingController controller;

  @override
  State<onboardingbottomNav> createState() => onboardingbottomNavState();
}

class onboardingbottomNavState extends State<onboardingbottomNav> {


  static const String KEYLOGIN = "Login";

  void getStart() async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLogin = sharedPref.getBool(KEYLOGIN);

    if(isLogin!=null){
      if(isLogin){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Getstartscreen(),));
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
      }
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Obx(() =>Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.controller.currentPageIndex > 0
            ? TextButton(
              onPressed: () {
            widget.controller.PrevPage();
          },
                child: const Text(
            "Prev",
            style: TextStyle(color: TColors.prevButton),
          ),
        )
            : SizedBox(width: 20,),


        SmoothPageIndicator(
          controller:widget.controller.pageController,
          count: 3,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            dotColor: Colors.black12,
            type: WormType.normal,
            activeDotColor: TColors.black,
          ),
        ),

        // "Next" or "Get Started" button
            widget.controller.currentPageIndex == widget.controller.totalPage - 1
            ? TextButton(
            onPressed: () {
              getStart();
          },
            child: const Text(
            "Get Started",
            style: TextStyle(color: TColors.nextButton), // Optional styling
          ),
        )
            : TextButton(
              onPressed: widget.controller.NextPage, // Use camelCase for method name
             child: const Text(
            "Next",
            style: TextStyle(color: TColors.nextButton), // Optional styling
          ),
        ),
      ],
    ),);
  }
}


