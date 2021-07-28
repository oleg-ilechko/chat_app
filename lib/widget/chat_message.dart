import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'avatar.dart';

class ChatMessage extends StatefulWidget {
  String text;
  bool self;

  ChatMessage({this.text = "", this.self = true});

  @override
  _ChatMessageState createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  Color color = HexColor("#2A87FF");
  Color textColor = HexColor("#000000");
  EdgeInsets padding = const EdgeInsets.all(0);
  Alignment alignment = Alignment.center;

  @override
  void initState() {
    if (widget.self) {
      textColor = HexColor("#FFFFFF");
      color = HexColor("#2A87FF");
      padding = const EdgeInsets.only(left: 90);
      alignment = Alignment.centerRight;
    } else {
      textColor = HexColor("#000000");
      color = HexColor("#DCE7FF");
      padding = const EdgeInsets.only(right: 90);
      alignment = Alignment.centerLeft;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        child: Stack(
          alignment: alignment,
          children: [
            Visibility(
              visible: !widget.self,
              child: Avatar(
                AssetImage(
                  "assets/avatars/5.jpg",
                ),
                type: AvatarType.Chat,
                active: true,
                hasMessage: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: widget.self ? 0 : 40, right: 15),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      constraints: BoxConstraints(minHeight: 38),
                      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(200)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.text, style: TextStyle(color: textColor),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(visible: !widget.self, child: Positioned(bottom: 2, left: 18, child: SvgPicture.asset("assets/chat/message_corner.svg"))),
                  Visibility(visible: widget.self, child: Positioned(bottom: 2, right: 18, child: SvgPicture.asset("assets/chat/self_message_corner.svg")))
                ],
              ),
            ),
            Visibility(visible: widget.self, child: Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/chat/read_indicator.svg")))
          ],
        ),
      ),
    );
  }
}
