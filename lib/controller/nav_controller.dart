import 'package:get/get.dart';
import 'package:codelab/route/routes.dart';

class NavController{

  void navigate(int navNum ){
      switch(navNum){
        case 1:
          Get.offNamed(Routes.HOMEPAGE);
          //Get.toNamed(Routes.HOMEPAGE);
          Get.snackbar("Home Page",
              "hi",
              snackPosition: SnackPosition.BOTTOM);
          break;
        case 2:
          Get.offNamed(Routes.MYPAGE);
          //Get.toNamed(Routes.MYPAGE);
          Get.defaultDialog(title: "We are going to Mypage" ,
              middleText: "hi",
              onConfirm:() {},
              onCancel: () => print("cancel"));
          Get.snackbar("My Page",
              "hi",
          snackPosition: SnackPosition.BOTTOM);
          break;
        case 3:
          Get.offNamed(Routes.SETTINGPAGE);
          //Get.toNamed(Routes.SETTINGPAGE);
          Get.snackbar("Setting Page",
              "hi",
              snackPosition: SnackPosition.BOTTOM);
          break;

      }
  }

}