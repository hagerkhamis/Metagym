import 'package:flutter/material.dart';

import '../../../../../core/utils/hex_color.dart';

class PathPainter extends CustomPainter {
  PathPainter();

  @override
  void paint(Canvas canvas, Size size) {
    Size size = const Size(300, 100);
    Path path = Path();
    path.moveTo(0, size.height / 3);
    path.quadraticBezierTo(
        size.width / 1, size.height, size.width, size.height * 6);

    // Path path2 = Path()
    //   ..moveTo(0, 30) // Move to the starting point of the curve
    //   ..quadraticBezierTo(200, 0, 400, 600);

    Paint paint = Paint()
      ..color = HexColor("#4ABA83")
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
