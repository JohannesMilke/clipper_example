import 'package:advent16_clipper/clipper/second_page_clipper.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return ClipPath(
      clipper: SecondPageClipper(),
      child: Container(
        color: Colors.red,
        height: height / 2,
      ),
    );
  }
}
