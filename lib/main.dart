import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          color: Colors.blue,
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
              print(ballNumber);
            });
          },
          child: Image(
            image: AssetImage('images/genie$ballNumber.png'),
            height: 400.0,
            width: 300.0,
          ),
        ),
      ),
    );
  }
}