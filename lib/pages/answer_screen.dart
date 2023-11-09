import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerScreen extends StatefulWidget {
  List answerList;
  AnswerScreen({super.key, required this.answerList});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.answerList.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('Answer Screen'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          itemCount: widget.answerList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.teal,
              child: Center(
                child: Text('${widget.answerList[index]}'),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 10,
          ),
        ));
  }
}
