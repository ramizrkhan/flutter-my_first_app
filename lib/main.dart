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
  static const questions = [
    {
      'questionText': "What\'s your favorite color ?",
      'answers': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'questionText': "What\'s your favorite animal ?",
      'answers': ['Lion', 'OX', 'Elefent', 'Snake'],
    },
    {
      'questionText': "Who\'s your favorite actor ?",
      'answers': ['Salman', 'Tom cruse', 'Rock', 'Amitabh'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text("Yes !!! "),
              ),
      ),
    );
  }
}
