import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NewPageDemo extends StatelessWidget {
  NewPageDemo({Key? key}) : super(key: key);
  @override

  AudioPlayer audioPlayer = AudioPlayer();
  Widget build(BuildContext context) {

    return  Scaffold(appBar: AppBar(title: Text("Robin"),leading: IconButton(onPressed: () {
      audioPlayer.stop();
    }, icon: Icon(Icons.stop)),),);
  }
}
