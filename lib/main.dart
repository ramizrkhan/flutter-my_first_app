import 'package:flutter/material.dart';

// void main() {
// runApp(MyApp());
// }
void main() => runApp(MyApp()); //Shorthand for one expression in one line

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print("Answer chosen !");
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
            Text('TheQuestions !'),
            RaisedButton(
              child: Text(
                "Answer 1 ",
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: ()=>print("Answer 2 choosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: (){
                print("Answer 3 chosen !");
              },
            ),
          ],
        ),
      ),
    );
  }
}
