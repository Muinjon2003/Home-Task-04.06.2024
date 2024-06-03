import 'dart:io';




void main() {
  // Create a list of questions
  List<Question> questions = [
    Question('What is the capital of France?', 'Paris', ['Paris', 'London', 'Rome', 'Berlin']),
    Question('What is 5 + 3?', '8', ['6', '7', '8', '9']),
    Question('What is the color of the sky?', 'Blue', ['Red', 'Green', 'Blue', 'Yellow']),
  ];

  Quiz quiz = Quiz(questions);

  quiz.start();

  print('You scored ${quiz.score} out of ${questions.length}');
}

class Question {
  String questionText;
  String correctAnswer;
  List<String> options;

  Question(this.questionText, this.correctAnswer, this.options);
}

class Quiz {
  List<Question> questions;
  int score = 0;
  int currentQuestionIndex = 0;

  Quiz(this.questions);

  void start() {
    for (var question in questions) {
      printQuestion(question);
      String userAnswer = getUserAnswer(question);
      if (userAnswer == question.correctAnswer) {
        print('Correct!\n');
        score++;
      } else {
        print('Wrong! The correct answer is ${question.correctAnswer}\n');
      }
      currentQuestionIndex++;
    }
  }

  void printQuestion(Question question) {
    print('Question ${currentQuestionIndex + 1}: ${question.questionText}');
    for (var i = 0; i < question.options.length; i++) {
      print('${i + 1}. ${question.options[i]}');
    }
  }

  String getUserAnswer(Question question) {
    stdout.write('Enter the number of your answer: ');
    String? input = stdin.readLineSync();
    int? selectedOption = int.tryParse(input ?? '');
    if (selectedOption != null && selectedOption > 0 && selectedOption <= question.options.length) {
      return question.options[selectedOption - 1];
    } else {
      print('Invalid choice, please try again.');
      return getUserAnswer(question);
    }
  }
}
