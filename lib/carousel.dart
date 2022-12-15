import 'package:aisthetic/video.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aisthetic/image.dart';
import 'package:video_player/video_player.dart';

class MyCarousel extends StatefulWidget {
  MyCarousel(this.index, this.onChange, {Key? key}) : super(key: key);

  int index;
  Function onChange;

  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  static VideoPlayerController controller =
      VideoPlayerController.asset("assets/videos/vid1.mp4");
  final urlImages = [
    MyVideo(0, controller),
    MyImage('assets/images/img1.jpg', 1),
    MyImage('assets/images/img2.jpg', 2),
    MyImage('assets/images/img3.jpg', 3),
  ];

  @override
  void initState() {
    controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * (0.55),
          viewportFraction: 0.75,
          onPageChanged: (index, reason) {
            widget.index = index;
            widget.onChange(widget.index);
            if (index != 0) {
              setState(() {
                controller.pause();
              });
            } else {
              controller.play();
            }
          }),
      itemCount: urlImages.length,
      itemBuilder: (context, index, realIndex) {
        return urlImages[index];
      },
    );
  }
}
