import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/home_page.dart';

class NewPageDemo extends StatefulWidget {
  @override
  State<NewPageDemo> createState() => _NewPageDemoState();
}

class _NewPageDemoState extends State<NewPageDemo> {
  late AudioPlayer audioPlayer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    String baseUrl = "https://ayat-app.com/public/";
    return Scaffold(
      appBar: AppBar(
        title: Text("Robin"),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(
                    audioPlayer: audioPlayer,
                    songUrl:
                        "${baseUrl}uploads/all/Xtdm4MdXtJVf5feL7rS5yquq18mnpceOEMPpJvGb.mp3",
                  ),
                ),
              );
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            audioPlayer.stop();
          },
          child: Text("Stoppppppppppppppppppppppppppppppppppppppppp"),
        ),
      ),
    );
  }
}
