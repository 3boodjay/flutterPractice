import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';

void main() => runApp(
      MaterialApp(home: Scaffoldcode()),
    );

class Scaffoldcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'shake me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Eightball(),
      backgroundColor: Colors.black,
    );
  }
}

class Eightball extends StatefulWidget {
  @override
  _EightballState createState() => _EightballState();
}

class _EightballState extends State<Eightball> {
  int ballindex = 1;

  void shakeball() {
    setState(() {
      ballindex = Random().nextInt(5) + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      shakeball();
    });
     detector.startListening();
    // TODO: fix the shaking BOY!!!
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            onPressed: () {
              shakeball();
            },
            child: Image.asset("images/ball$ballindex.png")),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            shakeball();
          },
          child: Text(
            "shake me",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.blue,
        )
      ],
    );
  }
}
