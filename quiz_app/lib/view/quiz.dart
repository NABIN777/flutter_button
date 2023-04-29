import 'package:flutter/material.dart';

import '../model/number.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  var num1 = 1;
  var num2 = 2;

  var correctAnswer = 0;
  var wrongAnswer = 0;

  var counter = 0;

  late Number obj;

  void generateNumber() {
    obj = Number();
    setState(() {
      List<int> lstNum = obj.generateRandom();
      num1 = lstNum[0];
      num2 = lstNum[1];
    });
  }

  void checkAnswer({var num1 = 0, var num2 = 0}) {
    if (++counter > 10) {
      restartGame();
    } else {
      if (num1 > num2) {
        correctAnswer++;
      } else if (num1 < num2) {
        wrongAnswer++;
      }
      generateNumber();
    }
  }

  void restartGame() {
    correctAnswer = 0;
    wrongAnswer = 0;
    counter = 0;

    generateNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number Generator"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: () {
                  checkAnswer(num1: num1, num2: num2);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 5, 70, 181)),
                ),
                child: RichText(
                  text: TextSpan(
                    text: '$num1',
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  checkAnswer(num1: num2, num2: num1);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 5, 70, 181)),
                ),
                child: RichText(
                  text: TextSpan(
                    text: '$num2',
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ]),
            const Spacer(),
            RichText(
              text: const TextSpan(
                text: 'Result:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 137, 4, 4),
                ),
              ),
            ),
            Text(
              "Correct Answers: $correctAnswer",
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              "Incorrect Answers: $wrongAnswer",
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              "Total Attempt: $counter",
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                restartGame();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 5, 70, 181)),
              ),
              child: const Text('Restart Game'),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
