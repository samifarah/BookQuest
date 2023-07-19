import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:bookquest_v3/Constants.dart';
import 'package:bookquest_v3/GetX_Controllers/NavigationBar_Controller.dart';
import 'package:bookquest_v3/Screens/LandingPage.dart';
import 'package:bookquest_v3/Screens/CategorisePage.dart';
import 'package:bookquest_v3/Screens/SearchPage.dart';
import 'package:bookquest_v3/Screens/ProfilePage.dart';
import 'app_routes.dart';

class Dashboard extends StatefulWidget {
  //const GNavigationBar({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();

}

class _DashboardState extends State<Dashboard> {
  late NavigationBarController navigationBarController;

  @override
  void initState() {
    super.initState();
    navigationBarController = Get.put(NavigationBarController());
  }
  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<NavigationBarController>(builder: (controller){
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
               ProfilePage(),
                SearchPage(),
                LandingPage(),
                Categorise(),
              ],
            ),
          ),
          bottomNavigationBar: GNav(
            selectedIndex: controller.tabIndex,
            backgroundColor: kPrimaryColor,
            tabBorderRadius: 20,
            tabMargin: EdgeInsets.all(5),
            tabBackgroundColor: kSecondaryColor,
            hoverColor: const Color(0xFFE0DDCA),
            activeColor: Colors.white,
            color: kSecondaryColor,
            padding: const EdgeInsets.all(15),
            curve: Curves.linear,
            tabs: [
              GButton(
                icon: Icons.person_outline_rounded,
                text: "Profile",
              ),
              GButton(
                icon: Icons.search_outlined,
                text: "Search",
              ),
              GButton(
                icon: Icons.home_filled,
                text: "Home Page",
              ),
              GButton(
                icon: Icons.category_outlined,
                text: "Categories",
              ),
              GButton(
                icon: Icons.switch_left_rounded,
                text: "Settings",
              ),
            ],
            onTabChange: (Index) {
              setState(() {
                controller.changeTabIndex(Index);
              });
            },
          ),
        );
      }, );

  }
}