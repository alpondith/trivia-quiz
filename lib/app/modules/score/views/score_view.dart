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
            const SizedBox(height: 8),
            Text(
              controller.score.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
                Get.toNamed(Routes.QUIZ);
              },
              child: const Text('Play Again'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
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
