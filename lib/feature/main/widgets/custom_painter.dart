import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 4 / 5;

    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    final roundingRectangle = Rect.fromLTRB(-125,
        size.height - roundingHeight * 2, size.width + 38, size.height - 0);

    final path = Path();
    path.addRect(filledRectangle);

    path.arcTo(roundingRectangle, 3.14, -3.14, true);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
