import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    var resText = 'You did it!';
    if (resultScore <= 8) {
      resText = 'You are awesome!';
    } else if (resultScore <= 18) {
      resText = 'You are pretty likeable!';
    } else {
      resText = 'You are really strange!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resetQuiz,
            /* style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black54)), */
            child: const Text('Restart Quiz!')),
        /* OutlinedButton(
          onPressed: resetQuiz,
          child: const Text('sfse'),
        ) */
      ],
    ));
  }
}
