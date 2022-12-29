import 'Question.dart';

class QuizBrain {
  late int _questionIndex = 0;

  final List<Question> _questionList = [
    Question('There are 7 days in the week.', true),
    Question('Flutter can develop mobile and web applications', true),
    Question('Humans can fly.', false),
    Question('UK is made up of 9 countries.', false),
    Question('Qatar hosted 2022 world cup.', true),
    Question('There are 12 months in a year.', true),

  ];

  void nextQuestion() {
    if (_questionIndex < _questionList.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionIndex].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    if (_questionIndex == _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionIndex = 0;
  }
}