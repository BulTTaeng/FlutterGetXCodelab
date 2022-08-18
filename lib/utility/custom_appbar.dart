import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/chart_controller.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {

  CustomAppbar({
    required this.appBar,
    required this.title,
    this.page = -1
  });

  final String title;
  final AppBar appBar;
  final int page;

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(title),
      actions: actionType(),
      centerTitle: true,
    );
  }

  List<Widget> actionType() {
    if (page == 1) {
      return [
        IconButton(
            onPressed: (){
              ChartController chartController = Get.find<ChartController>();
              chartController.increase();
              print(chartController.charData);
            },
          icon: const Icon(Icons.plus_one)
        ),
      ];
    }
    else {
      return [
        Container()
      ];
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}