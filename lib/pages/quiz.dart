import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/pages/quetsion_screen.dart';
import 'package:flutter_quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? initialScreen;
  var startScreen = 'quiz-screen';

  @override
  void initState() {
    initialScreen = StartScreen(startQuiz);
    super.initState();
  }

  void startQuiz() {
    setState(() {
      initialScreen = const QuestionScreen();
      startScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget startWidget = StartScreen(startQuiz);

    if (startScreen == 'quiz-screen') {
      startWidget = StartScreen(startQuiz);
    } else {
      startWidget = const QuestionScreen();
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
