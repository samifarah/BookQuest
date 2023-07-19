import 'package:bookquest_v3/GetX_Controllers/main_Controller.dart';
import 'package:get/get.dart';

class main_Binding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => main_Controller());
  }
}
