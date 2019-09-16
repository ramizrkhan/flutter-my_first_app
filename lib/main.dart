import 'package:flutter/material.dart';

// void main() {
// runApp(MyApp());
// }
void main() => runApp(MyApp()); //Shorthand for one expression in one line

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer chosen !");
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
