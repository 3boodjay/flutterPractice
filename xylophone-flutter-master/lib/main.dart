import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: SoundPlayer()),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class SoundPlayer extends StatefulWidget {
  @override
  _SoundPlayerState createState() => _SoundPlayerState();
}

class _SoundPlayerState extends State<SoundPlayer> {
  void playsound(int soundindx) {
    final player = AudioCache();
    player.play('note$soundindx.wav');
  }

  Expanded buildKey({int soundind, Color colori}) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          playsound(soundind);
        },
        color: colori,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(soundind: 1, colori: Colors.red),
        buildKey(soundind: 2, colori: Colors.orange),
        buildKey(soundind: 3, colori: Colors.yellow),
        buildKey(soundind: 4, colori: Colors.green),
        buildKey(soundind: 5, colori: Colors.teal),
        buildKey(soundind: 6, colori: Colors.blue),
        buildKey(soundind: 7, colori: Colors.purple),
      ],
    );
  }
}
