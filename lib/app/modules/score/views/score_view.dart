import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trivia_quiz/app/routes/app_pages.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  const ScoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Score'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your Score"),
            const SizedBox(height: 16),
            Text(
              controller.score.toString(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.back();
                Get.back();
                Get.toNamed(Routes.QUIZ);
              },
              child: const Text('Play Again'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.back();
                Get.back();
                Get.toNamed(Routes.HISTORY);
              },
              child: const Text('View History'),
            ),
          ],
        ),
      ),
    );
  }
}
