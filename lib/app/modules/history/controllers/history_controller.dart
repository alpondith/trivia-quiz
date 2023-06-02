import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HistoryController extends GetxController with StateMixin {
  @override
  void onInit() {
    load();
    super.onInit();
  }

  void load() async {
    var history = await GetStorage().read('history');
    change(history, status: RxStatus.success());
  }
}
