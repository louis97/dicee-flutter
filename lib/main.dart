import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
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
  int die1= new Random().nextInt(6) + 1;
  int die2= new Random().nextInt(6) + 1;
  void f(){setState(() {
    die1 = new Random().nextInt(6) + 1;
    die2 = new Random().nextInt(6) + 1;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    f();
                  });
                },
                child: Image.asset('images/dice$die1.png'),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    f();
                  });
                },
                child: Image.asset('images/dice$die2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
