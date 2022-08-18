import 'package:codelab/controller/nav_controller.dart';
import 'package:get/get.dart';

import '../controller/chart_controller.dart';

class ChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartController>(() => ChartController());
  }
}