class QuizSummaryItem {
  final int questionIndex;
  final String question;
  final String correctAnswer;
  final String userAnswer;
  
  QuizSummaryItem({
    required this.questionIndex,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });
}
