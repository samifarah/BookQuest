import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemesController extends GetxController{
  //final ThemesController themesController = Get.find<ThemesController>();
  late PageController pageController;
  RxInt currentPage=0.obs;
  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;
  RxBool isDarkTheme= false.obs;


  void switchTheme(ThemeMode newMode) {
    Get.changeThemeMode(newMode);
  }

 void goToTab(int page){

    currentPage.value=page;
    pageController.jumpToPage(page);
 }

  void animateToTab(int page){

    currentPage.value=page;
    pageController.animateToPage(page,duration: const Duration(milliseconds: 300),curve: Curves.ease);
  }

@override
  void onInit(){
  pageController =PageController(initialPage:0);
  super.onInit();

  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

}