import 'package:get/get.dart';
import 'package:trivia_quiz/app/routes/app_pages.dart';

import '../../../data/dataset.dart';

class QuizController extends GetxController with StateMixin {
  List<Map<String, String>> questions = DataSet.questions;

  final _index = 0.obs;
  get index => _index.value;
  set index(v) => _index.value = v;

  final _messageVisible = false.obs;
  get messageVisible => _messageVisible.value;
  set messageVisible(v) => _messageVisible.value = v;

  final _message = ''.obs;
  get message => _message.value;
  set message(v) => _message.value = v;

  final _score = 0.obs;
  get score => _score.value;
  set score(v) => _score.value = v;
  void scorePlus() => _score.value++;
  void scoreMinus() => score <= 1 ? score = 0 : score--;

  bool isAnswered = false;

  @override
  void onInit() {
    setQuestion(index);
    super.onInit();
  }

  void setQuestion(int index) async {
    change(null, status: RxStatus.loading());
    await Future.delayed(const Duration(seconds: 1));
    change(questions[index], status: RxStatus.success());
  }

  void nextQuestion() {
    isAnswered = false;
    messageVisible = false;
    index++;
    if (index < questions.length) {
      setQuestion(index);
    } else {
      Get.toNamed(Routes.SCORE, arguments: score);
    }
  }

  void checkAnswer(String key) {
    if (isAnswered) {
      return;
    }
    String? selectedAnswer = questions[index][key];
    if (questions[index]['answer'] == key) {
      scorePlus();
      message = " \" $selectedAnswer \" is correct";
    } else {
      scoreMinus();
      message = " \" $selectedAnswer \" is incorrect.";
    }
    messageVisible = true;
    isAnswered = true;
  }
}
