import 'package:flutter/material.dart';
import 'starting_screen.dart';
import 'question_screen.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const StartingScreen(), // Root route
        '/question': (context) =>
            const QuestionScreen(), // Route for QuestionScreen
      },
      initialRoute: '/',
    );
  }
}
