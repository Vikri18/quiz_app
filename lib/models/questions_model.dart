class QuizQuestion {
  const QuizQuestion(this.question, this.answer);

  final String question;
  final List<String> answer;

  List<String> getShuffleAnswers() {
    final shuffleList = List.of(answer);
    shuffleList.shuffle();
    return shuffleList; 
  }
}
