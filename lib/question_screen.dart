import 'package:flutter/material.dart';
import 'package:quiz/Structure/answer_button.dart';
import 'package:quiz/Data/question_data.dart';
import 'package:quiz/Data/store_answer.dart';
import 'package:quiz/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionIndex = 0;
  final StoreAnswer storeAnswer = StoreAnswer();
  void nextQuestion() {
    if (questions.length - 1 > questionIndex) {
      setState(() {
        questionIndex++;
      });
    }
    else{
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(selectedAnswers: storeAnswer.selectedAnswers),
        ),
      );


    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return Container(
      color: Colors.white, // Set the background color to white
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          ...currentQuestion.getShuffledAnswer().map((text) {//amra ae khane list ar prottekta jinish ke ekta ekta alda widge banaitesi.TEXT lekhta iccha moto variable boshano jabe
            // return AnswerButton(answer: text, onTap: () {});
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: AnswerButton(
                answer: text,
                onTap: () {
                  nextQuestion();
                  storeAnswer.addingChosenAnswer(text);
                  //print(storeAnswer.selectedAnswers); check korar jonne thikh ase naki
                },
              ),
            );
          }
              //amra dynamically button create korbo aebhabe na kore
              /* AnswerButton(
            answer: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answer: currentQuestion.answers[3],
            onTap: () {},
          ),*/
              ),
        ],
      ),
    );
  }
}
