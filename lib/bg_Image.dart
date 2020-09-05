import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/bg.jpg",
      fit: BoxFit.fill,
      // width: 100,
      // height: 100,
    );
  }
}
