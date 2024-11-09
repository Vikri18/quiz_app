import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onClick,
  });

  final void Function() onClick;
  final String answerText;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(100, 33, 1, 95),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
