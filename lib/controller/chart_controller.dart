import 'package:codelab/model/chart_data.dart';
import 'package:get/get.dart';

class ChartController extends GetxController {
  List<num> charData = ChartData().chartData;
  bool isLoading = false;

  Future<void> increase() async {
    isLoading = true;
    update(); // triggers the GetBuilder rebuild
    await Future.delayed(
      const Duration(seconds: 2),
          () => charData.add(charData.last+1)
    );
    isLoading = false;
    update();
  }


}