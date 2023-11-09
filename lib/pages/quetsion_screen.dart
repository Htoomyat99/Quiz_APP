import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/answer_button.dart';
import 'package:flutter_quiz_app/data/question.dart';
import 'package:flutter_quiz_app/pages/answer_screen.dart';
// import 'package:flutter_quiz_app/modals/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  final List<String> answerList = [];

  void answerQuestion(String answer) {
    if (currentQuestionIndex < questions.length - 1) {
      setState(
        () {
          currentQuestionIndex++;
        },
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AnswerScreen(answerList: answerList),
        ),
      );
    }
    setState(
      () {
        answerList.add(answer);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleAnswer().map(
              (answer) {
                return AnswerButton(
                    onTap: () {
                      answerQuestion(answer);
                    },
                    text: answer);
              },
            )
          ],
        ),
      ),
    );
  }
}
