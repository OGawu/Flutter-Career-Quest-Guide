import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Opacity(opacity: 0.6),
        ClipOval(child: Image.asset('assets/images/this-logo.png',
        width: 250,
        height: 250,
        fit: BoxFit.cover,
          //alt of opacity
        //color: Colors.blue,
        ),
        ),

        // Image.asset(
        //     'assets/images/this-logo.png',
        //   width: 250,
        //   //color: Colors.grey,
        // ),
        const SizedBox(
          height: 45,
        ),
        const Text(
          'In a quest to design your life, open your mind to learning. What you shoot for is convergence where everything about what you are gets to work together for you to realize your potential.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),

        const SizedBox(
          height: 15),
        OutlinedButton.icon(onPressed: (){
          startQuiz();
        },

          style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
          icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
          label: const Text('Start App', style: TextStyle(color: Colors.white,fontSize: 28),),)
      ],),
    );
  }
}
