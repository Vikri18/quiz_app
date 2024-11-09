import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_summary_model.dart';
import 'package:quiz_app/style/summary_text_style.dart';
import 'package:quiz_app/summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final QuizSummaryItem itemData;
  
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData.userAnswer == itemData.correctAnswer;

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
            questionIndex: itemData.questionIndex,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionText(
                  itemData.question.toString(),
                ),
                const SizedBox(height: 5),
                CorrectAnswer(
                  itemData.correctAnswer,
                ),
                AnswerText(
                  itemData.userAnswer,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
