import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return QuizScreen();
  }
}
