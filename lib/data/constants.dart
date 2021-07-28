import 'package:chat_app/pages/chat_row.dart';
import 'package:chat_app/pages/user_row.dart';
import 'package:chat_app/widget/avatar.dart';
import 'package:chat_app/widget/chat_message.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

final List<Widget> avatars = [
  Avatar(
    AssetImage(
      "assets/avatars/1.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/2.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/3.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/4.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/5.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/6.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/7.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
  Avatar(
    AssetImage(
      "assets/avatars/8.jpg",
    ),
    name: faker.person.firstName(),
    active: faker.randomGenerator.boolean(),
    hasMessage: faker.randomGenerator.boolean(),
  ),
];

final List<Widget> activeChats = [
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/1.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/2.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/3.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/4.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/5.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/6.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/7.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
  ChatRow(
      Avatar(
        AssetImage(
          "assets/avatars/8.jpg",
        ),
        type: AvatarType.Medium,
        active: faker.randomGenerator.boolean(),
        hasMessage: faker.randomGenerator.boolean(),
      ),
      faker.person.name(),
      faker.lorem.sentence(),
      faker.date.dateTime(),
      ChatNotification.Single),
];

final List<Widget> users = [
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/1.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/2.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/3.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/4.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/5.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/6.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/7.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
  UserRow(
      Avatar(
        AssetImage(
          "assets/avatars/8.jpg",
        ),
        type: AvatarType.Normal,
      ),
      faker.person.name(),
  ),
];

final List<Widget> messages = [
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
  ChatMessage(text: faker.lorem.sentence(), self: faker.randomGenerator.boolean()),
];