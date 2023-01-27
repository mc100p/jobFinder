import 'dart:math';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // drawing the background
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0XFFF6E5CA);
    canvas.drawRect(
        Rect.fromPoints(Offset.zero, Offset(size.width, size.height)), paint);

    //drawing bigger circles
    paint.color = const Color(0XFFEEDEC5);
    canvas.drawCircle(getOffsetBasedOnPercentage(size, 0.1, 1),
        getPercentageRadius(size, 200), paint);
    canvas.drawCircle(getOffsetBasedOnPercentage(size, 0.8, 0.1),
        getPercentageRadius(size, 100), paint);

    //draw smaller circles
    paint.color = const Color(0XFFFEFAEA);
    canvas.drawCircle(getOffsetBasedOnPercentage(size, 0.7, 0.2),
        getPercentageRadius(size, 10), paint);
    canvas.drawCircle(getOffsetBasedOnPercentage(size, 0.1, 1),
        getPercentageRadius(size, 10), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Offset getOffsetBasedOnPercentage(Size size, double x, double y) =>
      Offset(size.width * x, size.height * y);
  double getPercentageRadius(Size size, double radius) {
    var hyp = sqrt(pow(size.width, 2) + pow(size.height, 2));
    return hyp * radius * 0.002;
  }
}
