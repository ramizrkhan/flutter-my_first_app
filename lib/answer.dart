import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHelper;
  Answer(this.selectHelper);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      // color: Colors.grey,
      child: RaisedButton(
        child: Text(
          "Answer 1",
        ),
        onPressed: selectHelper,
        textColor: Colors.greenAccent,
        color: Colors.redAccent,
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
