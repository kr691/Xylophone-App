
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

   Expanded buildkey({ required Color color, required int soundNumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red,soundNumber: 1,),
              buildkey(color: Colors.blue,soundNumber: 2),
              buildkey(color: Colors.yellow,soundNumber: 3),
              buildkey(color: Colors.green,soundNumber: 4),
              buildkey(color: Colors.black,soundNumber: 5),
              buildkey(color: Colors.orange,soundNumber: 6),
              buildkey(color: Colors.white,soundNumber: 7),
            ],

          ),
        ),
      ),
    );
  }
}
