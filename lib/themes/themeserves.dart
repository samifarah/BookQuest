import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServes{
  final lightTheme= ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    backgroundColor: Colors.red,
    appBarTheme: const AppBarTheme(),
     // dividerColor: Colors.black45,
  );

  final darkTheme= ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(),
   // dividerColor: Colors.white24,
  );

  final _getStorage=GetStorage();
  final _darkThemeKey='isDarkTheme';

  void saveThemeData(bool isDarkMode){
    _getStorage.write(_darkThemeKey, isDarkMode);

  }
  bool isSavedDarkMode(){
    return _getStorage.read(_darkThemeKey)??false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode()?ThemeMode.dark:ThemeMode.light;
  }
  void changeTheme(){
    Get.changeThemeMode(isSavedDarkMode()?ThemeMode.light:ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}