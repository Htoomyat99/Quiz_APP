import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/answer_button.dart';
// import 'package:flutter_quiz_app/modals/quiz_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question is...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            onTap: () {},
            text: 'Button 1',
          ),
          AnswerButton(
            onTap: () {},
            text: 'Button 2',
          ),
          AnswerButton(
            onTap: () {},
            text: 'Button 3',
          ),
          AnswerButton(
            onTap: () {},
            text: 'Button 4',
          ),
        ],
      ),
    );
  }
}
