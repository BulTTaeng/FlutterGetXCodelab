import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FormController extends GetxController {
  late TextEditingController idController = TextEditingController();
  late TextEditingController passWordController = TextEditingController();

  void onChangeId(String data) {
    idController.text = data;
    update();
  }

  void onChangePassword(String data) {
    passWordController.text = data;
    update();
  }

  void clearId() {
    idController.clear();
    update();
  }

  void clearPassword() {
    passWordController.clear();
    update();
  }

  void show() {
    Get.defaultDialog(
        title: "Id and Password",
        middleText:
            "아이디: ${idController.text}\n 비밀번호: ${passWordController.text}",
        onConfirm: () {
          Get.back();
        },
        onCancel: () => print("cancel"));
  }
}
