import 'package:flutter/material.dart';
import 'package:wats_app/presentation/pages/sub_pages/single_item_chat_user_page.dart';
import 'package:wats_app/presentation/widgets/theme/style.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
        backgroundColor: primaryColor,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => SingleItemChatUserPage(),
        ),
      ),
    );
  }
}
