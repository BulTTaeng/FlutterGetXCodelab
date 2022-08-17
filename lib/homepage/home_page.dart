import 'package:codelab/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
          title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Hi"),
          Text("I'm HomePage"),
          ElevatedButton(
              onPressed: () {
                navController.navigate(2);
              },
              child: Text("To MyPage")
          )
        ],
      )
    );
  }
}