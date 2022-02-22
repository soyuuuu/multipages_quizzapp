import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 2: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank=[
    Question(q: '1 + 1 = 2', a: true),
    Question(q: '2 + 3 = 6', a: false),
    Question(q: '4 - 1 = 5', a: false),
    Question(q: '5 - 2 = 3', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}