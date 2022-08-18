import 'package:codelab/controller/count_controller.dart';
import 'package:codelab/controller/nav_controller.dart';
import 'package:codelab/utility/custom_appbar.dart';
import 'package:codelab/utility/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {

  //NavController navController = Get.find<NavController>();
  CountController countController = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "My Page", appBar: AppBar() , page:2),
        drawer: CustomDrawer(),
        body: Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                GetBuilder<CountController>(builder: (_) {
                  return Text(countController.num.toString());
                }),
                const SizedBox(width: 50,height: 50),
                Obx((){
                  return Text(countController.autoNum.value.toString());
                })
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:20),
                ),
                FloatingActionButton(
                  heroTag: "btn_plus",
                  onPressed: () => countController.increase(),
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.plus_one),
                ),
                Expanded(
                    flex: 1,
                    child: Container()
                ),
                FloatingActionButton(
                  heroTag: "btn_minus",
                  onPressed: () => countController.decrease(),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.exposure_minus_1),

                ),
                const Padding(
                  padding: EdgeInsets.only(right:20),
                ),
              ],
            ),

          ],
        ),
    );
  }
}