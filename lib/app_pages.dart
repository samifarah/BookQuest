import 'package:bookquest_v3/GetX_Bindings/NavigationBar_Binding.dart';
import 'package:bookquest_v3/Screens/LandingPage.dart';
import 'package:get/get.dart';
import 'package:bookquest_v3/Screens/CategorisePage.dart';
import 'package:bookquest_v3/Screens/SearchPage.dart';
import 'package:bookquest_v3/GetX_Bindings/Dashboard_Binding.dart';
import 'Dashboard.dart';
class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: "/",
        page: ()=>Dashboard(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
        name: "/home",
        page: () => LandingPage(),
        binding: DashboardPage_Binding(),
        transition: Transition.fade
    ),
    GetPage(
      name: "/catPage",
      page: ()=> Categorise(),
      binding: DashboardPage_Binding(),
        transition: Transition.fade
    ),
    GetPage(
        name: "/Search",
        page: ()=>SearchPage(),
        binding: DashboardPage_Binding(),
        transition: Transition.fade
    )
  ];
}