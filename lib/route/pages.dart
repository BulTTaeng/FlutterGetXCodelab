import 'package:codelab/binding/nav_binding.dart';
import 'package:codelab/homepage/home_page.dart';
import 'package:codelab/mypage/my_page.dart';
import 'package:codelab/settingpage/setting_page.dart';
import 'package:get/get.dart';
import 'package:codelab/route/routes.dart';

class Pages{
  static final routes =[
    GetPage(
      name: Routes.HOMEPAGE,
      page: () => HomePage(),
      binding: NavBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.MYPAGE,
      page: () => MyPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.SETTINGPAGE,
      page: () => SettingPage(),
      transition: Transition.noTransition,
    ),
  ];
}