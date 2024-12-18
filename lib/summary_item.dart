import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:testing_app/question_identifier.dart';


// class ItemData {
//   int question_index;
//   String user_answer;
//
//   ItemData({required this.question_index, required this.user_answer})
// }
//
// class SummaryItem extends StatelessWidget {
//   SummaryItem(this.itemData, {super.key});
//
//   // final Map<String, dynamic> itemData;
//   //ItemData itemData;

  //
  // @override
  // Widget build(context) {
  //   final isCorrectAnswer =
  //       itemData.user_answer == itemData.user_answer;

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer = itemData['user_answer'] ==
        itemData['correct_answer'];


    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                // style: GoogleFonts.lato(
                //   color: Colors.white,
                //   fontSize: 16,
                //   fontWeight: FontWeight.bold,
                // ),
              ),
              const SizedBox(height: 5,),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

