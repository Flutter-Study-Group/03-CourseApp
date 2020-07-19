import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircleClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();

    // path.quadraticBezierTo(
    //     size.width / 2, size.height / 2, size.width, size.height);
    // path.lineTo(0, size.height);

    path.lineTo(size.width * 0.50, 0);
    path.quadraticBezierTo(
        size.width * 0.20, size.height / 2, size.width * 0.50, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
