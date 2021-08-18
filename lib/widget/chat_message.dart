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
              child: widget.self
                  ? Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: SvgPicture.asset(
                            "assets/chat/chat_self_bottom.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Container(
                          width: 198,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                            child: Text(
                              widget.text,
                              style: TextStyle(color: textColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                  : Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                        "assets/chat/chat_bottom.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      width: 198,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        child: Text(
                          widget.text,
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
                visible: widget.self,
                child: Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset("assets/chat/read_indicator.svg")))
          ],
        ),
      ),
    );
  }
}
