import 'package:quiz_app/answer.dart';

class Question {
  late final String question;
  late final String image;
  late final String information;
  late final Answer answer;
  Question(question, image, answer, information) {
    this.question = question;
    this.image = image;
    this.answer = answer;
    this.information = information;
  }
  getAnswers() {
    return this.answer.answerTitle;
  }

  getImage() {
    return this.image;
  }

  answerTrue() {
    return answer.trueAnswer;
  }
}
