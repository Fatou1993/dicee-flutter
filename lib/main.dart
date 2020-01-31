import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;
  Random rndGenerator = Random();

  void setRandomDiceNumbers(){
    setState(() {
      _leftDiceNumber = 1 + rndGenerator.nextInt(6);
      _rightDiceNumber = 1 + rndGenerator.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: setRandomDiceNumbers,
                child: Image.asset('images/dice$_leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: setRandomDiceNumbers,
                child: Image.asset('images/dice$_rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
