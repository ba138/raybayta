import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raybayta/Screens/Home/Widgets/contact_chat_tile.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContactChatTile(
          ontap: () {
            Get.toNamed("/chatView");
          },
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
        ContactChatTile(
          ontap: () {},
        ),
      ],
    );
  }
}
