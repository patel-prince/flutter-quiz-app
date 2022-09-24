import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback restartQuiz;
  final int score;

  const Result({super.key, required this.score, required this.restartQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Quiz Completed',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'You have scored $score/12',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: restartQuiz,
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
