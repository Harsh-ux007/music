import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color color, int soundnumber}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.yellow, soundnumber: 2),
              buildkey(color: Colors.green, soundnumber: 3),
              buildkey(color: Colors.orange, soundnumber: 4),
              buildkey(color: Colors.blue, soundnumber: 5),
              buildkey(color: Colors.purple, soundnumber: 6),
              buildkey(color: Colors.teal, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
