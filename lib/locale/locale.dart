import 'package:get/get.dart';

class MyLocale implements Translations{
  @override
  Map<String, Map<String, String>> get keys =>{
    "ar":{
      "1":" تغيير لغة التطبيق" ,
      "2":"تغيير وضع التطبيق  ",
      "3":"عربي ",
      "4":"انكليزي",
      "5":"واليت",
      "6":" النسخة الفيزيائية ",
      "7":"تراترا راا",
      "8":"تواصل معنا",
      "9":"الضبط"
    },
    "en":{
      "1":"change App Language",
      "2":" change App Themes",
      "3":"Arabic",
      "4":"English",
      "5":"Wallet",
      "6":"physical Copies",
      "7":"Report Issue",
      "8":"Contact Us",
      "9":"Setting"
    },
  };}