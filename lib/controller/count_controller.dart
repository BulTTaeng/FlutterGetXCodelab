import 'dart:async';

import 'package:get/get.dart';

class CountController extends GetxController{

  int num = 0;
  var autoNum = 0.obs;

  void increase(){
    num++;
    update();
  }

  void decrease(){
    num--;
    update();
  }

  @override
  void onInit(){
    super.onInit();
    Timer.periodic(const Duration(seconds: 1), (_) => autoIncrease());
  }

  void autoIncrease() {
    autoNum.value++;
  }



}