import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

// void main() {
// runApp(MyApp());
// }
void main() => runApp(MyApp()); //Shorthand for one expression in one line

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    {
      'questionText': "What\'s your favorite color ?",
      'answer': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'questionText': "What\'s your favorite animal ?",
      'answer': ['Lion', 'OX', 'Elefent', 'Snake'],
    },
    {
      'questionText': "Who\'s your favorite actor ?",
      'answer': ['Salman', 'Tom cruse', 'Rock', 'Amitabh'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = 0;
      }
    });
    print("Answer chosen !");
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
