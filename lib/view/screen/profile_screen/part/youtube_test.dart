import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeTest extends StatefulWidget {
  static String videoID = 'yivH2E-DZUE';
  //https://www.youtube.com/watch?v=BKRpHDeRxeg
  
  const YoutubeTest({super.key});

  @override
  State<YoutubeTest> createState() => _YoutubeTestState();
}

class _YoutubeTestState extends State<YoutubeTest> {
  late YoutubePlayerController _controller;
  bool isFullScreen = false;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubeTest.videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        isLive: false,
        disableDragSeek: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
        setState(() {});
      },
      player: YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.amber,
        showVideoProgressIndicator: false,
      ),
      builder: (context, player) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: player,
      ),
    );
  }
}
