import 'package:flutter/material.dart';

class SignupHeaderCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Color(0xff8E4E80);
    Offset center = Offset(size.height * 0.4, size.width * 0.4);

    canvas.drawCircle(center, 265, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class SignupFooterCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.white;
    Offset center = Offset(size.height * 0.9, size.width);

    canvas.drawOval(
        Rect.fromCenter(
          center: center,
          height: size.height * 0.78,
          width: size.width * 0.75,
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
