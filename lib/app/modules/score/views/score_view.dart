import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  const ScoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScoreView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your Score"),
            const SizedBox(height: 16),
            const Text("5"),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Play Again'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('View History'),
            ),
          ],
        ),
      ),
    );
  }
}
