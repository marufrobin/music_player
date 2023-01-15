import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Page22 extends StatelessWidget {
  Page22({Key? key, required this.audioPlayer}) : super(key: key);
  AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next page"),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
              width: 200,
              color: Colors.cyanAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        audioPlayer.stop();
                      },
                      child: Icon(
                        Icons.stop_circle_rounded,
                        color: Colors.red,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        audioPlayer.resume();
                      },
                      child: Icon(
                        Icons.play_circle_fill_rounded,
                        color: Colors.blue,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        audioPlayer.pause();
                      },
                      child: Icon(
                        Icons.pause,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
          );
        },
        child: Text("Modal"),
      )),
    );
  }
}
