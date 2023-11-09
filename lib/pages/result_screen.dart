import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;

  @override
  Widget build(BuildContext context) {
    debugPrint('$chooseAnswer');

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answer 3 out of 6 questions correctly!',
          ),
          Text('List of answers and questions'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
