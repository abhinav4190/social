import 'package:flutter/material.dart';

class CustomClipperPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(
      w / 2,
      h,
      w,
      h * 0.9,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}