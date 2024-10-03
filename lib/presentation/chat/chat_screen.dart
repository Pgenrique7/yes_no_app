import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widget/chat/hermessage_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/mymessage_bubble.dart';
import 'package:yes_no_app/presentation/widget/shared/message_field_box.dart';

void main() => runApp(const MaterialApp(home: ChatScreen()));

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shakira'),
        centerTitle: false,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZv6AuyUfL30ecAjb7YqxBL7Ytwt06yccsnA&s'), 
          ),
        ),
      ),
      body: const ChatView(),
    );
  }
}

// ignore: camel_case_types
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded( 
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return index % 2 == 0 
                    ? const MymessageBubble() 
                    : const HermessageBubble();
              },
            ),
          ),
          const MessageFieldBox()
        ],
      ),
    );
  }
}
