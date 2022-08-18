import 'package:get/get.dart';
import 'package:codelab/route/routes.dart';

class NavController extends GetxController{

  void navigate(int navNum ){
      switch(navNum){
        case 1:
          Get.offNamed(Routes.HOMEPAGE);
          Get.defaultDialog(title: "We are going to Homepage" ,
              middleText: "hi");
          Get.snackbar("Home Page",
              "hi",
              snackPosition: SnackPosition.BOTTOM);
          break;
        case 2:
          Get.offNamed(Routes.MYPAGE);
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
          Get.defaultDialog(title: "We are going to SettingPage" ,
              middleText: "hi");
          Get.snackbar("Setting Page",
              "hi",
              snackPosition: SnackPosition.BOTTOM);
          break;

      }
  }

}