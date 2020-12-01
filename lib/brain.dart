import 'package:quiztwiz/question.dart';

class Brain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: '1. India is the world\’s largest producer of bananas',
        questionAnswer: true),
    Question(
        questionText:
            '2. The Indian chicken tikka masala originated in the United Kingdom',
        questionAnswer: true),
    Question(
        questionText: '3. Fortune cookies are not Chinese',
        questionAnswer: true),
    Question(
        questionText: '4. There are about 700 varieties of apples in the world',
        questionAnswer: false),
    Question(
      questionText:
          '5. It takes about 600 to 800 grapes to produce one bottle of wine',
      questionAnswer: false,
    ),
    Question(
      questionText: '6. A watermelon is about 55% water by weight',
      questionAnswer: false,
    ),
    Question(
      questionText: '7. Coffee is a zero-calorie beverage',
      questionAnswer: false,
    ),
    Question(
      questionText:
          '8. Around 350,000 people die from food poisoning every year',
      questionAnswer: true,
    ),
    Question(
      questionText:
          '9. The United States of America is the world\’s largest producer of oranges',
      questionAnswer: false,
    ),
    Question(
      questionText:
          '10. The melting point of chocolate is just below our natural body temperature',
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
