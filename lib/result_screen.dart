import 'package:flutter/material.dart';
import 'package:quiz/Structure/constants.dart';
import 'package:quiz/Data/question_data.dart';
import 'package:quiz/Structure/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.selectedAnswers})
      : super(key: key);

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i], // Fix the user_answer field
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();

    final numCorrectQuestions = getSummary().where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Text(
               'Score :$numCorrectQuestions',
              style: frontPageTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black), // Set the border color to black
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
                  ),
                  child: Scrollbar(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color:const Color.fromARGB(255, 135, 206, 250),
                        borderRadius:
                            BorderRadius.circular(10), // Set the border radius
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            QuestionsSummary(summaryData),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 60,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/question');
                },
                icon: const Icon(
                  Icons.restart_alt_rounded,
                  color: Color.fromARGB(150, 0, 120, 200),
                ),
                label: const Text(
                  'Restart',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
