import 'dart:ffi';

import 'package:codelab/controller/chart_controller.dart';
import 'package:codelab/controller/nav_controller.dart';
import 'package:codelab/utility/custom_appbar.dart';
import 'package:codelab/utility/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomePage extends StatelessWidget {
  ChartController chartController = Get.find<ChartController>();
  //NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Home Page", appBar: AppBar(), page: 1),
      drawer: CustomDrawer(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          children: [
            Text(chartController.charData.toString()),
            GetBuilder<ChartController>(
              builder: (controller) => controller.isLoading
              //width 조절 외 안되지?...
                  ? const Padding(
                padding: EdgeInsets.fromLTRB(100, 100, 100, 100),
                child: SizedBox(
                  height: 100,
                  width: 1,
                  child: CircularProgressIndicator(),
                )) :
              SfSparkLineChart.custom(
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => index,
                yValueMapper: (int index) => chartController.charData[index],
                dataCount: chartController.charData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
