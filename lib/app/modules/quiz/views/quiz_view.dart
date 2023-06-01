import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizView'),
        centerTitle: true,
      ),
      body: Center(
        child: controller.obx(
          (data) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Question '),
              const SizedBox(height: 16),
              Text(data['question']),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                child: Text(data['option-1']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text(data['option-2']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text(data['option-3']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => controller.nextQuestion(),
                child: Text(data['option-4']),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
