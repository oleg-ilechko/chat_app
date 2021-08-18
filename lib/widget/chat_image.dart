import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatImage extends StatelessWidget {

  Image image;
  bool self;

  ChatImage(this.image, this.self);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: self ? Alignment.centerRight : Alignment.centerLeft,
      height: 70,
      child: image,
    );
  }
}
