import 'package:flutter/material.dart';

import 'package:quiz_app/answers.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final String question;
  final List<Map<String, Object>> answers;
  final Function handleAnswerSelect;

  const Quiz(
      {super.key,
      required this.questionIndex,
      required this.question,
      required this.answers,
      required this.handleAnswerSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionIndex: questionIndex,
          question: question,
        ),
        Answers(
          answers: answers,
          onPressed: handleAnswerSelect,
        ),
      ],
    );
  }
}
