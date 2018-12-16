import 'package:flutter/material.dart';

class FirstPageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    path.cubicTo(size.width * 0.25, size.height * 0.85, size.width * 0.75,
        size.height * 0.6, size.width, size.height);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
