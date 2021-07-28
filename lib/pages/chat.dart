import 'package:chat_app/data/constants.dart';
import 'package:chat_app/widget/chat_bottom_bar.dart';
import 'package:chat_app/widget/chat_message.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget/avatar.dart';

class Chat extends StatefulWidget {
  final List<Widget> _messages = messages;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              GestureDetector(
                child: Icon(Icons.arrow_back_ios),
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(
                width: 15,
              ),
              Avatar(
                AssetImage(
                  "assets/avatars/5.jpg",
                ),
                type: AvatarType.Normal,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  faker.person.name(),
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/phone_small.svg",
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/icons/camera.svg",
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: HexColor('#E9F0FB'),
                        borderRadius: BorderRadius.circular(12.0)),
                    height: 64,
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: HexColor("#919BBF")),
                          children: const <TextSpan>[
                            TextSpan(
                                text:
                                    "Message to this chat and calls are now\n"),
                            TextSpan(
                                text: "secured with End to End encryption.")
                          ]),
                    ))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    child: widget._messages[index],
                  );
                },
                itemCount: widget._messages.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: ChatBottomBar());
  }
}
