import 'package:codelab/controller/form_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class FormBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FormController>(() => FormController());
  }
}