import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

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
  int _totalScore = 0;
  static const _questions = [
    {
      'questionText': "What\'s your favorite color ?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': "What\'s your favorite animal ?",
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'OX', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Snake', 'score': 1},
      ],
    },
    {
      'questionText': "Who\'s your favorite actor ?",
      'answers': [
        {'text': 'Salman', 'score': 10},
        {'text': 'Tom cruse', 'score': 5},
        {'text': 'Rock', 'score': 3},
        {'text': 'Amitabh', 'score': 1},
      ],
    },
  ];
  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
