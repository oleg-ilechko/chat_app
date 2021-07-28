import 'package:chat_app/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class UserRow extends StatefulWidget {
  Avatar _avatar;
  String _name;

  UserRow(this._avatar, this._name);

  @override
  _UserRowState createState() => _UserRowState();
}

class _UserRowState extends State<UserRow> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget._avatar,
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 14, right: 68),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget._name,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
        RoundCheckBox(
          isChecked: _selected,
          size: 22,
          borderColor: HexColor('#CFDEEF'),
          checkedColor: Colors.white,
          checkedWidget: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor("#2A87FF"),
            ),
            margin: EdgeInsets.all(3),
            width: 18,
            height: 18,
          ),
          onTap: (value) {
            setState(() {
              _selected = value;
            });
          },
        )
      ],
    );
  }
}
