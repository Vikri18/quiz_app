import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/result_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomePage(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const Questions();
  //   });
  // }

  var activeScreen = 'home page';
  final List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions page';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer.clear();
      activeScreen = 'home page';
    });
  }

  void chooseAnswer(answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result page';
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'home page'
    //     ? HomePage(switchScreen)
    //     : Questions(onSelectAnswer: chooseAnswer);

    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions page') {
      screenWidget = Questions(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'result page') {
      screenWidget = ResultPage(
        restartQuiz: restartQuiz,
        chosenAnswers: selectedAnswer,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          // child: activeScreen == 'home'
          //     ? HomePage(switchScreen)
          //     : const Questions(),
          child: screenWidget,
        ),
      ),
    );
  }
}
