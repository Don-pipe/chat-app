import 'package:flutter/material.dart';
import 'package:yesnoapp/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/adri.jpg'),
            ),
          ),
          title: Text('Adri'),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const FriendChatBubble()
                      : const PersonalChatBubble();
                },
              ),
            ),
            // Texting Box
            const MessageBox(),
          ],
        ),
      ),
    );
  }
}
