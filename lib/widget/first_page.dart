import 'dart:math';

import 'package:advent16_clipper/clipper/first_page_clipper.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.deepPurple,
      child: Stack(
        children: <Widget>[
          buildBackground(context, height),
          Center(
            child: Text(
              'I saw',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBackground(BuildContext context, double height) => Column(
        children: <Widget>[
          ClipPath(
            clipper: FirstPageClipper(),
            child: Container(
              child:
                  centeredText(context, text: 'I came', color: Colors.orange),
              color: Colors.red,
              height: height / 2,
            ),
          ),
          rotate(
            child: ClipPath(
              clipper: FirstPageClipper(),
              child: Container(
                child: rotate(
                  child: centeredText(context,
                      text: 'I conquered', color: Colors.red),
                ),
                color: Colors.orange,
                height: height / 2,
              ),
            ),
          ),
        ],
      );

  Widget centeredText(BuildContext context,
          {@required String text, @required Color color}) =>
      Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.display2.copyWith(color: color),
        ),
      );

  Widget rotate({Widget child}) => Transform(
        transform: Matrix4.rotationZ(pi)..rotateY(pi),
        alignment: Alignment.center,
        child: child,
      );
}
