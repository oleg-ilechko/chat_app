import 'package:chat_app/data/constants.dart';
import 'package:chat_app/widget/add_story.dart';
import 'package:chat_app/widget/bottom_bar.dart';
import 'package:chat_app/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatList extends StatefulWidget {
  final List<Widget> _avatars = avatars;
  final List<Widget> _chats = activeChats;

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Chats'),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'chat');
                },
                child: SvgPicture.asset(
                  "assets/icons/edit.svg"
                ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            SearchTextField("Search"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 90,
              child: ListView.separated(
                separatorBuilder: (_, index) => SizedBox(width: 17),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  if (index == 0) {
                    return AddStoryButton();
                  } else {
                    return widget._avatars[index];
                  }
                },
                itemCount: widget._avatars.length,
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 233, 240, 251),
              thickness: 1,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) {
                  return widget._chats[index];
                },
                separatorBuilder: (_, index) => SizedBox(height: 20),
                itemCount: widget._chats.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(0)
    );
  }
}
