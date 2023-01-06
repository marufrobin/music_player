import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration _duration = Duration();
  Duration _postion = Duration();
  String url =
      "https://github.com/truecoder-001/audio-file-play-stop-pause-resume/raw/main/theme_01.mp3";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        _duration = event;
      });
    });
    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        _postion = event;
      });
    });
    audioPlayer.setSourceUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fucking Music App"),
        leading: IconButton(
            onPressed: () async {
              await audioPlayer.play(UrlSource(url));
            },
            icon: Icon(Icons.play_arrow_rounded)),
      ),
    );
  }
}
