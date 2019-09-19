import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = 'You are Pretty likable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
