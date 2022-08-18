import 'package:codelab/controller/count_controller.dart';
import 'package:get/get.dart';

class CountBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}