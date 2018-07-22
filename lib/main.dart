import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// Immutable = final
// Stateless widgets are immutable

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hey'),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget { // Creating an instance of a state class
  @override
  createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
