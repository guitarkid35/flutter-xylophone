import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blue[50], soundNumber: 1),
              buildKey(color: Colors.blue[100], soundNumber: 2),
              buildKey(color: Colors.blue[200], soundNumber: 3),
              buildKey(color: Colors.blue[300], soundNumber: 4),
              buildKey(color: Colors.blue[400], soundNumber: 5),
              buildKey(color: Colors.blue[500], soundNumber: 6),
              buildKey(color: Colors.blue[600], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
