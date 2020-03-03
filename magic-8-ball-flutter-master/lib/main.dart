import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';

const kBurgany = Color(0xFF4D0403);
const kNavyBlue = Color(0xFF182855);

int ballindex = 1;

List<String> choices = [
  "Sit on face",
  "Eat pussy",
  "Suck dick",
  "Finger",
  "Make out",
  "Eat ass",
  "Kiss neck",
  "Get it on",
];

void main() => runApp(
      MaterialApp(home: Scaffoldcode()),
    );

class Scaffoldcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kNavyBlue,
      appBar: AppBar(
        backgroundColor: kBurgany,
        title: Text(
          'shake me down :)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Eightball(),
    );
  }
}

//shake me ,':)

class Eightball extends StatefulWidget {
  @override
  _EightballState createState() => _EightballState();
}

class _EightballState extends State<Eightball> {
  void initState() {
    super.initState();
  }

  void shakeball() {
    setState(() {
      ballindex = Random().nextInt(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(children: <Widget>[
          Image.asset("images/ball1.png"),
          Positioned(
            bottom: 130,
            right: 160,
            child: Container(
              width: 80.0,
              height: 100.0,
              child: Text(
                choices[ballindex],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            shakeball();
            ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
              shakeball();
            });
          },
          child: Text(
            "shake me",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: kBurgany,
        )
      ],
    );
  }
}

//@override
//void initState() {
//super.initState();
//ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
//shakeball();
//});
//detector.startListening();
// TODO: fix the shaking BOY!!!
//}
