import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  int soundNumber = 1;

  void playsound(soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  void buildkey() {
    Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
        onPressed: () {
          playsound(1);
        },
        child: Text(
          'Sound 1',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {
                    playsound(1);
                  },
                  child: Text(
                    'Sound 1',
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    playsound(2);
                  },
                  child: Text('Sound 2'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  onPressed: () {
                    playsound(3);
                  },
                  child: Text('Sound 3'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    playsound(4);
                  },
                  child: Text('Sound 4'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    playsound(5);
                  },
                  child: Text('Sound 5'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey),
                  onPressed: () {
                    playsound(6);
                  },
                  child: Text('Sound 6'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent),
                  onPressed: () {
                    playsound(7);
                  },
                  child: Text('Sound 7'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
