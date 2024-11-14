import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_app/data/questions.dart';
import 'package:testing_app/questions_summary.dart';
class Results extends StatelessWidget {
  const Results({super.key, required this.chosenAnswers, required this.onRestart,});

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData () {
    final List<Map<String, Object>> summary = [];

    for(var i= 0; i< chosenAnswers.length; i++){
      summary.add(
          {'question_index' : i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer': chosenAnswers[i]
          });

    }
    return summary;

  }



  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              //style: const TextStyle(color: Colors.white, fontSize: 25),
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // const Text(
            //   'List of answers and questions',
            //   style: TextStyle(color: Colors.white, fontSize: 25),
            // ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
