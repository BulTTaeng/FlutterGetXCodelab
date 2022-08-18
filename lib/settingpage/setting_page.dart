import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/nav_controller.dart';
import '../utility/custom_appbar.dart';
import '../utility/custom_drawer.dart';

class SettingPage extends StatelessWidget{

  //NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppbar(title: "Setting Page", appBar: AppBar() , page:3),
      drawer: CustomDrawer(),
      body: Text("settingsssssssssssssssssssssssssssssssssssssssssssssss"),

    );
  }
}