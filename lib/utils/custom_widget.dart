import 'package:flutter/material.dart';

Widget indent(
  double horizontal,
  double vertical,
  Widget child,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    child: child,
  );
}

Color containercolor() {
  return Color.fromARGB(255, 240, 238, 238);
}

Color get backgroundColor {
  return Color.fromARGB(255, 245, 243, 243);
}
