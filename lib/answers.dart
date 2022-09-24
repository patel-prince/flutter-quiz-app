import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';

class Answers extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final Function onPressed;
  const Answers({
    required this.onPressed,
    required this.answers,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...(answers).map(
            (answer) => Answer(
              answer: answer['answer'] as String,
              onPressed: () => onPressed(answer['score']),
            ),
          ),
        ],
      ),
    );
  }
}
