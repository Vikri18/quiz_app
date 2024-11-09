import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 16,
      ),
      textAlign: TextAlign.left,
    );
  } 
}

class AnswerText extends StatelessWidget {
  const AnswerText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    );
  }
}

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 150, 198, 241),
      ),
      textAlign: TextAlign.left,
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 249, 133, 241),
        fontSize: 21,
      ),
      textAlign: TextAlign.center,
    );
  }
}
