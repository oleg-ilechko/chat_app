import 'package:flutter/material.dart';

enum AvatarType { Large, Medium, Normal, Chat, Small }

class Avatar extends StatelessWidget {
  String _name;
  ImageProvider _image;
  bool _active = false;
  bool _hasMessage = false;
  AvatarType _type;
  double _size = 66.0;

  Avatar(this._image,
      {String name, bool active = false, AvatarType type = AvatarType.Large, bool hasMessage = false})
      : _active = active,
        _name = name,
        _type = type,
        _hasMessage = hasMessage {
    switch (this._type) {
      case AvatarType.Large:
        _size = 66.0;
        break;
      case AvatarType.Medium:
        _size = 66.0;
        break;
      case AvatarType.Normal:
        _size = 46.0;
        break;
      case AvatarType.Chat:
        _size = 34.0;
        break;
      case AvatarType.Small:
        _size = 29.0;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Material(
              elevation: 4.0,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              child: Ink.image(
                image: _image,
                fit: BoxFit.cover,
                width: _size,
                height: _size,
                child: InkWell(
                  onTap: () {
                    print('clicked');
                  },
                ),
              ),
            ),
            _active ? Container(
              width: _size,
              height: _size,
              child: IgnorePointer(
                child: CustomPaint(
                  painter: OpenPainter(_hasMessage, minimized: _type == AvatarType.Chat),
                ),
              ) ,
            ) : SizedBox.shrink()
          ],
        ),
        _type == AvatarType.Large ? Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Text(_name),
          ],
        ) : SizedBox.shrink(),
      ],
    );
  }

}

class OpenPainter extends CustomPainter {

  bool _hasMessage = false;
  bool _minimized = false;

  OpenPainter(this._hasMessage, {minimized = false}): _minimized = minimized;

  @override
  void paint(Canvas canvas, Size size) {
    if (!_minimized) {
      var outline = Paint()
        ..color = Color(0xff2A87FF)
        ..style = PaintingStyle.stroke
        ..isAntiAlias = true
        ..strokeWidth = 2;
      canvas.drawCircle(Offset(33, 33), 32, outline);
      var inner = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..isAntiAlias = true
        ..strokeWidth = 2;
      canvas.drawCircle(Offset(33, 33), 30, inner);
    }
    if (_hasMessage) {
      var dx = 55.0;
      var dy = 54.0;
      var radius = 6.0;
      if (_minimized) {
        dx = 30.0;
        dy = 30.0;
        radius = 4.0;
      }
      var message = Paint()
        ..color = Color(0xff1BC12E)
        ..isAntiAlias = true
        ..style = PaintingStyle.fill;
      canvas.drawCircle(Offset(dx, dy), radius, message);
      var messageOutline = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..isAntiAlias = true
        ..strokeWidth = 1.0;
      canvas.drawCircle(Offset(dx, dy), radius, messageOutline);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}
