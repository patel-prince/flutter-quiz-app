import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  final int questionIndex;
  const Question({
    super.key,
    required this.question,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Q${questionIndex + 1}.',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 18,
                ),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
