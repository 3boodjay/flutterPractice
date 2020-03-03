import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';
import 'package:audioplayers/audio_cache.dart';
import 'ListChoices.dart';

const kBurgany = Color(0xFF4D0403);
const kNavyBlue = Color(0xFF182855);

int ballindex = 1;

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
          'shake me la',
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
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      shakeball();
    });
  }

  void shakeball() {
    setState(() {
      ballindex = Random().nextInt(7);
      final player = AudioCache();
      player.play('shakeS.mp3');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(children: <Widget>[
          Image.asset("images/ball.png"),
          Positioned(
            bottom: 130,
            right: 165,
            child: Container(
              width: 80.0,
              height: 100.0,
              child: Text(
                choices[ballindex],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF468ad1)),
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
