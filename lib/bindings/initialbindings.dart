import 'package:ecommerce/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBindingds extends Bindings {
  @override
  void dependencies() {
    //start
    Get.put(Crud());
  }
}
