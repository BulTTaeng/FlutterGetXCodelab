import 'package:get/get.dart';
import 'package:codelab/route/routes.dart';

class NavController extends GetxController{

  void navigate(int navNum){
      switch(navNum){
        case 1:
          Get.offNamed(Routes.HOMEPAGE);
          break;
        case 2:
          Get.offNamed(Routes.MYPAGE);
          break;
        case 3:
          Get.offNamed(Routes.SETTINGPAGE);
          break;

      }
  }

}