import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: Center(
        child: controller.obx(
          (data) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text('Score :  ${controller.score}'),
              ),
              const SizedBox(height: 32),
              Obx(
                () => Text("Question : ${controller.index + 1}"),
              ),
              const SizedBox(height: 16),
              Text(data['question']),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => controller.checkAnswer('option-1'),
                child: Text(data['option-1']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => controller.checkAnswer('option-2'),
                child: Text(data['option-2']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => controller.checkAnswer('option-3'),
                child: Text(data['option-3']),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => controller.checkAnswer('option-4'),
                child: Text(data['option-4']),
              ),
              const SizedBox(height: 64),
              Obx(
                () => Visibility(
                  visible: controller.messageVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text(controller.message)),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => controller.nextQuestion(),
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
