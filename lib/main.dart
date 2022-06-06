import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask me anything',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.blue[500],
          elevation: 4,
        ),
        body: Magic8Page(),
      ),
    ),
  );
}

class Magic8Page extends StatefulWidget {
  const Magic8Page({Key key}) : super(key: key);

  @override
  _Magic8PageState createState() => _Magic8PageState();
}

class _Magic8PageState extends State<Magic8Page> {
  int ballAnswer = 1;
  void randAnswer() {
    ballAnswer = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                randAnswer();
              },
            );
          },
          child: Image.asset('images/ball$ballAnswer.png'),
        ),
      ),
    );
  }
}
