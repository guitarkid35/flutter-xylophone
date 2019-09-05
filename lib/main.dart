import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.blue[100],
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.blue[200],
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.blue[300],
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.blue[400],
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.blue[500],
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue[600],
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.blue[700],
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
