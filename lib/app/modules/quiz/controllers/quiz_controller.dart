import 'package:get/get.dart';

class QuizController extends GetxController with StateMixin {
  int index = 0;

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
    index++;
    print("index : " + index.toString());
    print("length : " + questions.length.toString());
    if (index < questions.length) {
      setQuestion(index);
    } else {
      // go to score page
    }
  }

  void checkAnswer() {}

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
