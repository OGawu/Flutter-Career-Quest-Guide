import 'package:flutter/material.dart';
import 'package:testing_app/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            // children: summaryData.map((data) {
            //   return Row(
            //     children: [
            //       Text(((data['question_index'] as int) + 1).toString()),
            //       Expanded(
            //         child: Column(
            //           children: [
            //             Text(data['question'] as String),
            //             const SizedBox(
            //               height: 5,
            //             ),
            //             Text(data['user_answer'] as String),
            //             Text(data['correct_answer'] as String),
            //           ],
            //         ),
            //       )
            //     ],
            //   );
            // }).toList(),
            children: summaryData.map(
              (data) {
                return SummaryItem(data);
              },
            ).toList(),
          ),
        ));
  }
}

//
// import 'package:flutter/material.dart';
//
// class QuestionSummary extends StatelessWidget {
//   const QuestionSummary(this.summaryData, {super.key});
//
//   final List<Map<String, Object>> summaryData;
//
//   @override
//   Widget build(BuildContext context) {
// // you can return a Sized Box of height 300 for example, this takes that space on screen and leave the rest fot other items
// //       return SizedBox(
// //       height: 300,
// //       child: SingleChildScrollView(
//     return Expanded(
//       child: SingleChildScrollView(
//         child: Column(
//           children: summaryData.map((data) {
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.start, // Fix layout issues
//               children: [
//                 Text(
//                   ((data['question_index'] as int) + 1).toString(),
//                   style: const TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start, // Fix text alignment
//                     children: [
//                       Text(data['question'] as String),
//                       const SizedBox(height: 5),
//                       Text(
//                         'Your answer: ${data['user_answer']}',
//                         style: const TextStyle(color: Colors.blue),
//                       ),
//                       Text(
//                         'Correct answer: ${data['correct_answer']}',
//                         style: const TextStyle(color: Colors.green),
//                       ),
//                       const Divider(), // To separate each question
//                     ],
//                   ),
//                 )
//               ],
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
