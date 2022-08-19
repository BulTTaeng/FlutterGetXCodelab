import 'package:codelab/controller/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/nav_controller.dart';
import '../utility/custom_appbar.dart';
import '../utility/custom_drawer.dart';
import '../utility/custom_text_form.dart';

class SettingPage extends StatelessWidget {
  //NavController navController = Get.find<NavController>();
  FormController formController = Get.find<FormController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Setting Page", appBar: AppBar(), page: 3),
      drawer: CustomDrawer(),
      body: Center(
        child: ListView(
          children: [
            Row(
              children: [
                GetBuilder<FormController>(builder: (_){
                  return CustomTextForm(str: '아이디를 입력하세요' , controller: formController.idController, obsc: false, size: Size(Get.width , Get.height));
                }),
                SizedBox(
                  height: Get.height/10,
                  child: IconButton(
                      onPressed: () {
                        formController.clearId();
                      },
                      icon: const Icon(Icons.cleaning_services)),
                )

              ],
            ),
            Row(
              children: [
                GetBuilder<FormController>(builder: (_){
                  return CustomTextForm(str: '비밀번호를 입력하세요' , controller: formController.passWordController, obsc: true, size: Size(Get.width , Get.height));
                }),
                SizedBox(
                  height: Get.height/10,
                  child: IconButton(
                      onPressed: () {
                        formController.clearPassword();
                      },
                      icon: const Icon(Icons.format_clear_outlined)
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  formController.clearPassword();
                  formController.clearId();
                } ,
                child: const Text("모두 지우기")
            ),

            TextButton(
                onPressed: () {
                  formController.show();
                } ,
                child: const Text("아이디 비밀번호 확인하기")
            ),

          ],
        ),
      ),
    );
  }
}
