import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_summary_model.dart';
import 'package:quiz_app/summary/question_identifier.dart';
import 'package:quiz_app/style/summary_text_style.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryData, {super.key});

  final List<QuizSummaryItem> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final isCorrectAnswer = data.userAnswer == data.correctAnswer;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   (data.questionIndex + 1).toString(),
                    //   style: const TextStyle(
                    //     color: Colors.white,
                    //   ),
                    // ),
                    QuestionIdentifier(
                        isCorrectAnswer: isCorrectAnswer,
                        questionIndex: data.questionIndex),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          QuestionText(
                            data.question.toString(),
                          ),
                          const SizedBox(height: 5),
                          CorrectAnswer(
                            data.correctAnswer,
                          ),
                          AnswerText(
                            data.userAnswer,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
