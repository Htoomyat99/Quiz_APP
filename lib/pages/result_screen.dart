import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/result_component.dart';
import 'package:flutter_quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chooseAnswer, required this.restartQuiz});

  final List<String> chooseAnswer;
  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    int count = 0;

    for (int i = 0; i < questions.length; i++) {
      if (i < chooseAnswer.length &&
          questions[i].answers[0] == chooseAnswer[i]) {
        count++;
      }
    }

    return Center(
      child: SizedBox(
        width: 330,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'You answered $count out of ${questions.length} questions correctly!',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: chooseAnswer.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ResultComponent(
                        chooseAnswer: chooseAnswer, index: index)),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.restart_alt),
              onPressed: restartQuiz,
              label: Text(
                'Restart Quiz',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
