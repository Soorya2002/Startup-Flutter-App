import 'package:flutter/material.dart';

class TwoSidedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height);
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.width * 0.2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TwoSidedClipper oldClipper) {
    return false;
  }
}
