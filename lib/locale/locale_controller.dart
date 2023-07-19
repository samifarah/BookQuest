import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyLocaleController extends GetxController{
 // Locale? intialLang =sharepref!.getString("lang")== null ? Get.deviceLocale:Locale(sharepref!.getString("lang")!);


 // static get sharepref => null;
  void changLand (String codelang){
    Locale locale=Locale(codelang);
   // sharepref!.setString("lang",codelang);
    Get.updateLocale(locale);
  }

}