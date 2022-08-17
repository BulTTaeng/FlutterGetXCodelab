import 'package:codelab/route/pages.dart';
import 'package:codelab/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.HOMEPAGE,
      getPages: Pages.routes,
    );
  }


}
