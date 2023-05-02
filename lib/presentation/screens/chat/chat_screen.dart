
import 'package:flutter/material.dart';
import 'package:yesnoapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yesnoapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yesnoapp/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://c-cl.cdn.smule.com/smule-gg-s-sg-bck4/sing/performance/cover/69/85/f8f05f4f-0017-42fb-8e9b-5016fc5a3bcd.jpg'),
          ),
        ),
        title: const Text('Chat nuevo'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
             Expanded(
              child: ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index) {
                    return  (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
                  },
                ),
              ),
              const SizedBox(height: 10,),
              const MessageFieldBox(),
              const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}