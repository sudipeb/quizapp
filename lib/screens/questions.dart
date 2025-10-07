import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestions = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestions.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          AnswerButton(onTap: () {}, answerText: currentQuestions.answers[0]),
          AnswerButton(onTap: () {}, answerText: currentQuestions.answers[1]),
          AnswerButton(onTap: () {}, answerText: currentQuestions.answers[2]),
          AnswerButton(onTap: () {}, answerText: currentQuestions.answers[3]),
        ],
      ),
    );
  }
}
