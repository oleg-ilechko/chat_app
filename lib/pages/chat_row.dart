import 'package:chat_app/widget/avatar.dart';
import 'package:chat_app/widget/chat_indicator.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

enum ChatNotification {
  None, Single, Double
}

class ChatRow extends StatelessWidget {

  Avatar _avatar;
  String _name;
  String _lastMessage;
  DateTime _time;
  ChatNotification _notification;

  ChatRow(this._avatar, this._name, this._lastMessage, this._time,
      this._notification);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _avatar,
        Flexible(fit: FlexFit.loose, child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 68),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, softWrap: false, overflow: TextOverflow.fade, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              SizedBox(height: 8,),
              Text(_lastMessage, softWrap: false, overflow: TextOverflow.fade, style: TextStyle(fontSize: 14),),
            ],
          ),
        )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(faker.date.time()),
            ChatIndicator(faker.randomGenerator.boolean(), faker.randomGenerator.boolean()),
          ],
        ),
      ],
    );
  }
}
