import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/question.dart';

class ResultComponent extends StatelessWidget {
  const ResultComponent(
      {super.key, required this.chooseAnswer, required this.index});

  final List<String> chooseAnswer;
  final int index;

  @override
  Widget build(BuildContext context) {
    var num = index + 1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: questions[index].answers[0] == chooseAnswer[index]
                  ? Colors.blue
                  : Colors.red.shade700,
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          margin: const EdgeInsets.only(right: 20),
          child: Text(
            '$num',
            style: GoogleFonts.lato(
                color: questions[index].answers[0] == chooseAnswer[index]
                    ? Colors.black
                    : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: SizedBox(
            width: 275,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  questions[index].text,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  chooseAnswer[index],
                  style: GoogleFonts.lato(
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  questions[index].answers[0],
                  style: GoogleFonts.lato(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
