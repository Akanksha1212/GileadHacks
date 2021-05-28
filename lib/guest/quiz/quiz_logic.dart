import 'question.dart';

class QuizLogic {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('Does deodorant cause cancer?', false),
    Question('Do underwire bras cause breast cancer?', false),
    Question('Can nipple piercing cause breast cancer?', true),
    Question(' Men don’t (or can’t) get breast cancer.', false),
    Question('Breast cancer is a hereditary disease', false),
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int printQuestionNumber() {
    print(_questionNumber);
  }

  int printQuestionsLength() {
    print(_questions.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
}
