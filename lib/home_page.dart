import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(
                170, 237, 236, 240), //160 is transparency value
            width: 300,
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     color: const Color.fromARGB(255, 215, 208, 249),
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            'Take this quiz to challenge your knowledge!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 21,
              color: Color.fromARGB(255, 215, 208, 249),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 215, 208, 249),
              side: const BorderSide(
                color: Color.fromARGB(255, 215, 208, 249),
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
