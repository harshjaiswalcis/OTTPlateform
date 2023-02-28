import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TrailerVideo extends StatefulWidget {
  const TrailerVideo({super.key, this.title = 'Stranger Things '});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _TrailerVideoState();
  }
}

class _TrailerVideoState extends State<TrailerVideo> {
  late VideoPlayerController _videoPlayerController1;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://joy1.videvo.net/videvo_files/video/free/2014-12/small_watermarked/Raindrops_Videvo_preview.webm');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 20 / 14,
      autoPlay: true,
      allowMuting: true,
      allowFullScreen: true,
      useRootNavigator: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Column(children: <Widget>[
      Expanded(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
      // ElevatedButton(
      //   onPressed: () {
      //     _chewieController.enterFullScreen();
      //   },
      //   child: const Text('Fullscreen'),
      // ),
    ]));
  }
}
