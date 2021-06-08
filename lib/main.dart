import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Ask Me Anything"),
                backgroundColor: Colors.blueAccent),
            backgroundColor: Colors.blue,
            body: Askmebody()));
  }
}

class Askmebody extends StatefulWidget {
  const Askmebody({Key? key}) : super(key: key);

  @override
  _AskmebodyState createState() => _AskmebodyState();
}

class _AskmebodyState extends State<Askmebody> {
  @override
  int ballnumber = 1;

void stateChange() {
  setState(() {
    print("this is image");
    print(ballnumber);
    ballnumber = Random().nextInt(2);
    if (ballnumber == 0) {
      ballnumber = 3;
    }
    else if (ballnumber == 1) {
      ballnumber = 2;
    } else {
      ballnumber = 4;
    }
  });
}
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      stateChange();
                    },
                    child: Image.asset("assets/images/ball$ballnumber.png")))
          ],
        ),
      ),
    );
  }
}
