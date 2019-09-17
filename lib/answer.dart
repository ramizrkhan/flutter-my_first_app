import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHelper;
  final String answerText;
  Answer(this.selectHelper, this.answerText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      // color: Colors.grey,
      child: RaisedButton(
        child: Text(
          answerText,
        ),
        onPressed: selectHelper,
        textColor: Colors.greenAccent,
        color: Colors.redAccent,
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
