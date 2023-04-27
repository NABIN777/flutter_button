import 'package:flutter/material.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black,
        height: 800,
        width: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the column view
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 5, 70, 181)),
                ),
                child: const Text('1'),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 5, 70, 181)),
                ),
                child: const Text('2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
