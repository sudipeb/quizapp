import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('The question is '),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: Text('Answer 2')),
          ElevatedButton(onPressed: () {}, child: Text('Answer 3')),
        ],
      ),
    );
  }
}
