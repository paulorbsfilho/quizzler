import 'package:flutter/foundation.dart';
import 'package:quizzler/answer.dart';

import 'question.dart';

class QuizBrain extends ChangeNotifier{
  int _questionNumber = 0;
  int _hits = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', Answer.TRUE),
    Question('You can lead a cow down stairs but not up stairs.', Answer.FALSE),
    Question('Approximately one quarter of human bones are in the feet.', Answer.TRUE),
    Question('A slug\'s blood is green.', Answer.TRUE),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', Answer.TRUE),
    Question('It is illegal to pee in the Ocean in Portugal.', Answer.TRUE),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        Answer.FALSE),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        Answer.TRUE),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        Answer.FALSE),
    Question('Will Gta 6 be released this year?', Answer.MAYBE),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        Answer.TRUE),
    Question('Google was originally called \"Backrub\".', Answer.TRUE),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        Answer.TRUE),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        Answer.TRUE),
    Question('will Hamilton be champion in 2020?', Answer.MAYBE),
 ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  Answer getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length -1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    _hits = 0;
  }

  void countHit() {
    _hits++;
  }

  String getPercent() {
    double percent = (_hits*100) / _questionBank.length;
    return percent.toStringAsFixed(1);
  }

  bool gotAllTheQuestionsRight() {
    if (_hits == _questionBank.length-1){
      return true;
    }else{
      return false;
    }
  }

  bool start() {
    if(_questionNumber == 0){
      return true;
    }else{
      return false;
    }
  }
}
