import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/models/quiz_summary_model.dart';
import 'package:quiz_app/style/summary_text_style.dart';
import 'package:quiz_app/summary/quiz_summary.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.restartQuiz,
    required this.chosenAnswers,
  });

  final void Function() restartQuiz;
  final List<String> chosenAnswers;

  List<QuizSummaryItem> get summaryData {
    final List<QuizSummaryItem> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      final summaryItem = QuizSummaryItem(
        questionIndex: i,
        question: questions[i].question,
        correctAnswer: questions[i].answer[0],
        userAnswer: chosenAnswers[i],
      );
      summary.add(summaryItem);
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data.userAnswer == data.correctAnswer;
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(
              'You answered $numCorrectAnswer out of $numTotalQuestions qestions correctly!',
            ),
            const SizedBox(
              height: 40,
            ),
            QuizSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: restartQuiz,
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
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
