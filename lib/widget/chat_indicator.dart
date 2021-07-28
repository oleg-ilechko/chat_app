import 'package:chat_app/pages/chat_row.dart';
import 'package:flutter/material.dart';

class ChatIndicator extends StatelessWidget {

  bool _active = false;
  bool _double = false;

  ChatIndicator(this._active, this._double);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      child: CustomPaint(
        painter: ChatIndicatorPainter(_active, _double),
      ),
    );
  }

}

class ChatIndicatorPainter extends CustomPainter {

  bool _active = false;
  bool _double = false;

  ChatIndicatorPainter(this._active, this._double);

  @override
  void paint(Canvas canvas, Size size) {
    if (_double) {
      var first = Paint()
        ..color = Color(0xff2A87FF)
        ..style = PaintingStyle.fill
        ..isAntiAlias = true;
      canvas.drawCircle(Offset(-5.5, 14), 2.5, first);
      var second = Paint()
        ..color = Color(0xff2A87FF)
        ..style = PaintingStyle.fill
        ..isAntiAlias = true;
      canvas.drawCircle(Offset(-15, 14), 2.5, second);
    } else if (_active) {
      var circle = Paint()
        ..color = Color(0xff2A87FF)
        ..style = PaintingStyle.fill
        ..isAntiAlias = true;
      canvas.drawCircle(Offset(-5, 14), 4.5, circle);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}