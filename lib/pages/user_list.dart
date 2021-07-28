import 'package:chat_app/data/constants.dart';
import 'package:chat_app/widget/search.dart';
import 'package:chat_app/pages/secret_chat.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget/bottom_bar.dart';

class UserList extends StatefulWidget {
  final List<Widget> _users = users;

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text('Select People'),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0, top: 20),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField("Search People"),
              SecretChat(),
              Divider(
                color: Color.fromARGB(255, 233, 240, 251),
                thickness: 1,
              ),
              Text(
                'Suggested People',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: HexColor('#919BBF')
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return widget._users[index];
                    },
                    separatorBuilder: (_, index) => SizedBox(height: 20),
                    itemCount: widget._users.length,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(2));
  }
}
