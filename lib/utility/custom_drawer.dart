import 'package:flutter/material.dart';
import 'package:codelab/controller/nav_controller.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              "Drawer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/drawerImage.jpeg'),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home Page"),
              onTap: () {
                NavController navController = Get.find<NavController>();
                navController.navigate(1);
              }),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Page"),
              onTap: () {
                NavController navController = Get.find<NavController>();
                navController.navigate(2);
              }),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting Page"),
              onTap: () {
                NavController navController = Get.find<NavController>();
                navController.navigate(3);
              }),
        ],
      ),
    );
  }
}
