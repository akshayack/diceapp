import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text('Dice'),
          ),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                    print("dffg");
                  }
              ),
            )
        ),
      ),
    );
  }
}