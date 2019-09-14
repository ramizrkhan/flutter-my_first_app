import 'package:flutter/material.dart';

// void main() {
// runApp(MyApp());
// }
void main () => runApp(MyApp()); //Shorthand for one expression in one line  
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Ramiz'),);
  }
}
