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
  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answer chosen !");
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favorite color ?",
      "What\'s your favorite animal ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text(
                "Answer 1 ",
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 choosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 chosen !");
              },
            ),
          ],
        ),
      ),
    );
  }
}
