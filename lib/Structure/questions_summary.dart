import 'package:flutter/cupertino.dart';
import 'package:quiz/Structure/constants.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ((data['question_index'] as int) + 1).toString(),
              style: questionStyle,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: questionStyle,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Correct Answer: ${data['correct_answer'] as String}',
                    style: correctAndYourAnswer,
                  ),
                  const SizedBox(
                    height:5,
                  ),
                  Text(
                    'Your Answer: ${data['user_answer'] as String}',
                    style: correctAndYourAnswer,
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
