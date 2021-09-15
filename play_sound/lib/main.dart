import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = "00:00:00";
  AudioPlayer audioPlayer;

  _MyAppState() {
    //Initialize audio player
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    // What to do after audio played
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    //Fast forward
    await audioPlayer.seek(Duration(seconds: 30));
    //Play sound from url
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing Music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('Play'),
                onPressed: () {
                  playSound(
                      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3");
                },
              ),
              RaisedButton(
                child: Text('Pause'),
                onPressed: () {
                  pauseSound();
                },
              ),
              RaisedButton(
                child: Text('Stop'),
                onPressed: () {
                  stopSound();
                },
              ),
              RaisedButton(
                child: Text('Resume'),
                onPressed: () {
                  resumeSound();
                },
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
