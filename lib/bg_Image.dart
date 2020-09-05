import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/bg1.jpg",
      fit: BoxFit.fill,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
      // width: 100,
      // height: 100,
    );
  }
}
