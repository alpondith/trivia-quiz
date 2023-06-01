import 'package:get/get.dart';

class QuizController extends GetxController with StateMixin {
  int index = 0;

  final _messageVisible = false.obs;
  get messageVisible => _messageVisible.value;
  set messageVisible(v) => _messageVisible.value = v;

  final _message = ''.obs;
  get message => _message.value;
  set message(v) => _message.value = v;

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
    messageVisible = false;
    index++;
    if (index < questions.length) {
      setQuestion(index);
    } else {
      // go to score page
    }
  }

  void checkAnswer(String key) {
    if (questions[index]['answer'] == key) {
      message = 'Your answer is correct';
    } else {
      message = 'Your answer is Incorrect';
    }
    messageVisible = true;
  }

  List<Map<String, String>> questions = [
    {
      'question': "This is first question",
      'answer': 'option-1',
      'option-1': 'Option One',
      'option-2': 'Option two',
      'option-3': 'Option three',
      'option-4': 'Option Four',
    },
    {
      'question': "This is second question",
      'answer': 'option-3',
      'option-1': 'Option One',
      'option-2': 'Option two',
      'option-3': 'Option three',
      'option-4': 'Option Four',
    },
    {
      'question': "This is third question",
      'answer': 'option-4',
      'option-1': 'Option One',
      'option-2': 'Option two',
      'option-3': 'Option three',
      'option-4': 'Option Four',
    },
    {
      'question': "This is fourth question",
      'answer': 'option-2',
      'option-1': 'Option One',
      'option-2': 'Option two',
      'option-3': 'Option three',
      'option-4': 'Option Four',
    },
    {
      'question': "This is fifth question",
      'answer': 'option-3',
      'option-1': 'Option One',
      'option-2': 'Option two',
      'option-3': 'Option three',
      'option-4': 'Option Four',
    },
  ];
}
