import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'answer': 'Black', 'score': 1},
        {'answer': 'Red', 'score': 2},
        {'answer': 'Blue', 'score': 3},
        {'answer': 'Green', 'score': 4},
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'answer': 'Lion', 'score': 1},
        {'answer': 'Elephant', 'score': 2},
        {'answer': 'Dog', 'score': 3},
        {'answer': 'Rabbit', 'score': 4},
      ]
    },
    {
      'question': 'What\'s your favourite bird?',
      'answers': [
        {'answer': 'Eagle', 'score': 1},
        {'answer': 'Ostrich', 'score': 2},
        {'answer': 'Crow', 'score': 3},
        {'answer': 'Spearow', 'score': 4},
      ]
    },
  ];
  int questionIndex = 0;
  int totalScore = 0;

  handleAnswerSelect(int score) {
    if (questionIndex < questions.length) {
      setState(() {
        questionIndex += 1;
        totalScore += score;
      });
    }
  }

  restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.deepPurple,
          ),
          title: const Text('Quiz App'),
          centerTitle: true,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                question: questions[questionIndex]['question'] as String,
                questionIndex: questionIndex,
                answers: questions[questionIndex]['answers']
                    as List<Map<String, Object>>,
                handleAnswerSelect: handleAnswerSelect,
              )
            : Result(
                restartQuiz: restartQuiz,
                score: totalScore,
              ),
      ),
    );
  }
}
