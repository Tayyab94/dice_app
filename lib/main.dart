import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App new'),
          ),
          backgroundColor: Colors.red.shade500,
        ),
        body: Dicepage(),
      ),
    ));

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftNo, rightNo = Random().nextInt(6) + 1;

  void ChangeDiceFace() {
    setState(() {
      leftNo = Random().nextInt(6) + 1;
      rightNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              ChangeDiceFace(); // This Function is now changing the dice No
            },
            child: Image.asset('images/dice$leftNo.png'),
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rightNo.png'),
            onPressed: () {
              ChangeDiceFace(); // This Function is now changing the dice No
            },
          )),
        ],
      ),
    );
  }
}
