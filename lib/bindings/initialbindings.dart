import 'package:ecommerce/core/class/crud.dart';
import 'package:get/get.dart';

class initialBindingds extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
