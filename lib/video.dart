import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideo extends StatefulWidget {
  final int index;
  final VideoPlayerController? controller;

  const MyVideo(this.index, this.controller, {Key? key}) : super(key: key);

  @override
  _MyVideoState createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
  @override
  void initState() {
    widget.controller!.initialize();
    // widget.controller!.play();
    super.initState();

    // Ensure the first frame is shown after the video is initialized,
    // even before the play button has been pressed.
  }

  // @override
  // void dispose() {
  //   // Ensure disposing of the VideoPlayerController to free up resources.
  //   widget.controller!.pause();
  //   widget.controller!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: MediaQuery.of(context).size.height * (0.55),
      width: MediaQuery.of(context).size.width * (0.75),
      color: Colors.blueGrey,
      child: widget.controller!.value.isInitialized
          ? AspectRatio(
              aspectRatio: widget.controller!.value.aspectRatio,
              child: VideoPlayer(
                widget.controller!,
              ),
            )
          : Container(
              color: Colors.blueGrey,
            ),
    );
  }
}
