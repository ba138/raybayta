import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Screens/HomeScreen/Widgets/contact_chat_tile.dart';

import '../../../Configs/colors.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [ContactChatTile()],
    );
  }
}
