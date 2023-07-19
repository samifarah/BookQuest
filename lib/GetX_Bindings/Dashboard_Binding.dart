import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:get/get.dart';
import 'package:bookquest_v3/GetX_Controllers/CategorisePage_Controller.dart';
import 'package:bookquest_v3/GetX_Controllers/SearchPage_Controller.dart';
import 'package:bookquest_v3/GetX_Controllers/ProfilePage_Controller.dart';
class DashboardPage_Binding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => LandingPage_Controller());
    Get.lazyPut(() => CategorisePage_Controller());
    Get.lazyPut(() => SearchPage_Controller());
    Get.lazyPut(() => ProfilePage_Controller());
  }
}
