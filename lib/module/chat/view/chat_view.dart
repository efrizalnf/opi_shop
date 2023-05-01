import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';
import '../controller/chat_controller.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  Widget build(context, ChatController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        actions: const [],
        automaticallyImplyLeading: false,
        title: const Text("Chat"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Placeholder(),
        ),
      ),
    );
  }

  @override
  State<ChatView> createState() => ChatController();
}
