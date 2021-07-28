import 'package:chat_app/pages/chat.dart';
import 'package:chat_app/pages/chat_list.dart';
import 'package:chat_app/pages/user_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      routes: {
        '/': (context) => ChatList(),
        'chat_list': (context) => ChatList(),
        'chat': (context) => Chat(),
        'user_list': (context) => UserList(),
      },
    );
  }
}

