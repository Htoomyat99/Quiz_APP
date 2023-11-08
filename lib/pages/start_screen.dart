import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              height: 300,
              // color: Colors.white54,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            // OutlinedButton(
            //   style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
            //   onPressed: () {},
            //   child: const Text(
            //     'End Quiz',
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            ElevatedButton.icon(
                onPressed: startQuiz,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                icon: const Icon(Icons.arrow_right_alt),
                label: Text('Start Quiz',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                    )))
          ],
        ),
      ),
    );
  }
}
