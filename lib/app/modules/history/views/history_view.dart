import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('11 pm , June 1 , 2023  - 3 points'),
            const SizedBox(height: 16),
            const Text('11 pm , June 1 , 2023  - 3 points'),
            const SizedBox(height: 16),
            const Text('11 pm , June 1 , 2023  - 3 points'),
            const SizedBox(height: 16),
            const Text('11 pm , June 1 , 2023  - 3 points'),
            const SizedBox(height: 16),
            const Text('11 pm , June 1 , 2023  - 3 points'),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
