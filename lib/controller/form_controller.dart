import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FormController extends GetxController {
  late TextEditingController idController = TextEditingController(); // name
  late TextEditingController passWordController = TextEditingController(); // Server Ip

  void onChangeIp(String data) {
    idController.text = data;
    update();
  }
}