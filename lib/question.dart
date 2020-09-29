import 'package:quizzler/answer.dart';

class Question {
  String questionText;
  Answer questionAnswer;

  Question(String q, Answer a) {
    questionText = q;
    questionAnswer = a;
  }
}

