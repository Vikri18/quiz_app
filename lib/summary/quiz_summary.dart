import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_summary_model.dart';
import 'package:quiz_app/summary/summary_item.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryData, {super.key});

  final List<QuizSummaryItem> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
