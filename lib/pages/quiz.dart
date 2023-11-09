import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/question.dart';
import 'package:flutter_quiz_app/pages/quetsion_screen.dart';
import 'package:flutter_quiz_app/pages/result_screen.dart';
import 'package:flutter_quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var startScreen = 'quiz-screen';

  void startQuiz() {
    setState(
      () {
        startScreen = 'question-screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          startScreen = 'result-screen';
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget startWidget = StartScreen(startQuiz);

    if (startScreen == 'quiz-screen') {
      startWidget = StartScreen(startQuiz);
    } else if (startScreen == 'result-screen') {
      startWidget = ResultScreen(
        chooseAnswer: selectedAnswer,
      );
    } else {
      startWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          // child: initialScreen,
          child: startWidget,
        ),
      ),
    );
  }
}
