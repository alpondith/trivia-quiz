import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/color_manager.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz History'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final key = data.keys.elementAt(index);
            final value = data[key];

            return ListTile(
              leading: const Icon(
                Icons.security_rounded,
                color: ColorManager.ACCENT,
              ),
              title: Text(key),
              trailing: Text(
                value.toString(),
              ),
              dense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 60),
            );
          },
        ),
        onEmpty: const Center(
          child: Text('No History Found'),
        ),
      ),
    );
  }
}
