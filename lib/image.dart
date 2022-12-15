import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  String urlImage;
  int index;

  MyImage(this.urlImage, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Colors.blueGrey,
      width: double.infinity,
      child: Image.asset(urlImage, fit: BoxFit.fill),
    );
  }
}
