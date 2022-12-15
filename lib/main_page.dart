import 'package:aisthetic/text_slide.dart';
import 'package:flutter/material.dart';
import 'carousel.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<TextSlider> texts = [
    TextSlider(
      'Choose your jewel box',
      'Choose a jewel box that speaks to you. Select our signature Unsaid jewel box, or customize your gift with an artwork.',
      key: UniqueKey(),
    ),
    TextSlider(
      'Write your card',
      'Explore cards with custom poems commissioned from our favourite writers. Customize yours with a personal note.',
      key: UniqueKey(),
    ),
    TextSlider(
      'Choose your image',
      'Select an image of your choice and add to your selected artwork. We make sure that it appears as clear as possible',
      key: UniqueKey(),
    ),
    TextSlider(
      'Share and spread the word',
      'Tell your friends and family about us and share the word. We wish to make our customers around the world super happy.',
      key: UniqueKey(),
    ),
  ];
  int index = 0;

  void newIndex(int ind) {
    setState(() {
      index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * (0.10),
              padding: const EdgeInsets.fromLTRB(40, 35, 50, 10),
              child: Text(
                'Make it personal',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 15),
                    color: Colors.black87),
              ),
            ),
            MyCarousel(index, newIndex),
            const SizedBox(
              height: 30,
            ),
            texts[index],
          ],
        ),
      ),
    );
  }
}
