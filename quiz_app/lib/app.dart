import 'package:flutter/material.dart';
import 'package:quiz_app/view/quiz.dart';

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const QuizView(),
      },
    );
  }
}
