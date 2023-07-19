import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:get/get.dart';

class LandingPage_Binding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => LandingPage_Controller());
  }
}
