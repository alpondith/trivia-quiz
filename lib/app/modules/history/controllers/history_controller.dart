import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HistoryController extends GetxController with StateMixin {
  var history;
  @override
  void onInit() async {
    var data = {
      'June 1 , 2023': 3,
      'June 2 , 2023': 3,
      'June 3 , 2023': 3,
    };
    GetStorage().write('history', data);
    history = await GetStorage().read('history');
    change(history, status: RxStatus.success());
    super.onInit();
  }
}
