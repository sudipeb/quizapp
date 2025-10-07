import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          // the [opacity] widget isnt resource intensive so its better to avoid
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //     height: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide.none,
            ),
            label: const Text('Start Quiz!'),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

/// the approach below is replaced by the code above
// OutlinedButton(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//               side: BorderSide.none,
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text('Start Quiz!'),
//                 const SizedBox(width: 10),
//                 Icon(Icons.arrow_forward),
//               ],
//             ),
//           ),
