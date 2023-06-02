import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

class ScoreController extends GetxController {
  final score = Get.arguments;

  @override
  void onInit() {
    setHistory();
    super.onInit();
  }

  void setHistory() {
    var history = GetStorage().read('history');

    String now = DateFormat('hh:mm a , EEEE, MMM d, yyyy ').format(DateTime.now());

    if (history == null) {
      Map data = {
        now: score,
      };
      GetStorage().write('history', data);
    } else {
      history[now] = score;
    }
  }
}
