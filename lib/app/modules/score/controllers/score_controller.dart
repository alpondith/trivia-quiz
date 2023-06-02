import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ScoreController extends GetxController {
  final score = Get.arguments;

  @override
  void onInit() {
    setHistory();
    super.onInit();
  }

  void setHistory() {
    var history = GetStorage().read('history');

    DateTime now = DateTime.now().add(const Duration(hours: 6));
    if (history == null) {
      Map data = {
        '$now': score,
      };
      GetStorage().write('history', data);
    } else {
      history['$now'] = score;
    }
  }
}
