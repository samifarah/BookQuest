import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';
import 'package:bookquest_v3/Dashboard.dart';
import 'package:bookquest_v3/GetX_Bindings/Dashboard_Binding.dart';
import 'ReusableCardLandingPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'app_pages.dart';
import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:bookquest_v3/GetX_Bindings/LandingPage_Binding.dart';
import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';


//myscreens
import 'package:bookquest_v3/Screens/LandingPage.dart';
//Farizee's screens
import 'package:bookquest_v3/Screens/phyiscal_copies.dart';
import 'package:bookquest_v3/Screens/favorite_books.dart';
import 'package:bookquest_v3/Screens/wishlist.dart';
import 'package:bookquest_v3/Screens/check_all_booksAdminEnd.dart';
import 'package:bookquest_v3/Screens/confirm_payment.dart';
import 'package:bookquest_v3/Screens/own.dart';
import 'package:bookquest_v3/Screens/confirm_order.dart';
import 'package:bookquest_v3/Screens/delivery.dart';
import 'package:bookquest_v3/Screens/quest _coins_adeed.dart';
import 'package:bookquest_v3/Screens/buying_quest_coins.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialBinding: DashboardPage_Binding(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ZillaSlab',
        colorScheme: ColorScheme.fromSeed(
            seedColor: kPrimaryColor,
            primary: kPrimaryColor,
            secondary: kSecondaryColor),
        useMaterial3: true,
      ),
      home: Dashboard(),
    );
  }
}
