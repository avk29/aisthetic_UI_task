import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class TextSlider extends StatefulWidget {
  const TextSlider(this.header, this.body, {Key? key}) : super(key: key);

  final String header;
  final String body;

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      child: Container(
        height: MediaQuery.of(context).size.height * (0.25),
        padding: const EdgeInsets.fromLTRB(40, 0, 50, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.header,
              style: GoogleFonts.nanumMyeongjo(
                textStyle: const TextStyle(fontSize: 25),
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.body,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 15, height: 1.5),
                  color: Colors.black87,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
