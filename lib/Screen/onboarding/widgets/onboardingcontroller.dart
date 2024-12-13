import 'package:flutter/material.dart';
import 'package:get/get.dart';


class  OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();


  ///Page Controller

  final pageController = PageController();
  Rx<int>currentPageIndex = 0.obs;
  /// update current Index when page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;


  ///Skip Controller
  void Skippage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  int totalPage = 3;

  void PrevPage() {
    if (currentPageIndex > 0) { // Adjusted to prevent overflow (index starts at 0)
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void NextPage() {
    if (currentPageIndex < totalPage - 1) { // Prevent overflow at the end
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void updatePageIndex(var index){

    currentPageIndex = index;
  }

}
