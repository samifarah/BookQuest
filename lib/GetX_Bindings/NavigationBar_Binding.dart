import 'package:get/get.dart';
import 'package:bookquest_v3/GetX_Controllers/CategorisePage_Controller.dart';
import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:bookquest_v3/GetX_Controllers/NavigationBar_Controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(()=>NavigationBarController());
    Get.lazyPut<LandingPage_Controller>(() => LandingPage_Controller());
    Get.lazyPut<CategorisePage_Controller>(() => CategorisePage_Controller());
  }

}