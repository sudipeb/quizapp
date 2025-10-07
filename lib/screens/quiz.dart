import 'package:flutter/material.dart';
import 'package:quizapp/screens/questions.dart';
import 'package:quizapp/screens/start_screens.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  /// storing the widget as a variable
  ///
  /// this is not a good practice for larger apps
  /// as it can lead to performance issues
  /// but for small apps its okay
  // var activescreen = StartScreen();
  var activescreen = 'Start-screen';

  void switchScreen() {
    setState(() {
      activescreen = 'Question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 51),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activescreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
