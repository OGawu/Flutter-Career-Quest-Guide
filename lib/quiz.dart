import 'package:flutter/material.dart';
import 'package:testing_app/data/questions.dart';
import 'package:testing_app/questions_screen.dart';
import 'package:testing_app/start_screen.dart';
import 'package:testing_app/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  //
  //
  // @override
  // void initState(){
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';



  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      //selectedAnswers = [];

      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }


  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);

    }
    if(activeScreen == 'results-screen'){
      screenWidget = Results(chosenAnswers: selectedAnswers,
      onRestart: restartQuiz,);
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Next Page'), // Title of the AppBar
          centerTitle: true, // Centers the title
          backgroundColor: Colors.blue, // Optional: AppBar color
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF091B3A), Color(0xFF091B3A)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child:
            //  activeScreen,

          //
          // activeScreen == 'start-screen'
          //         ? StartScreen(switchScreen)
          //         : const QuestionsScreen(),


          screenWidget,
        ),

    );
  }
}
