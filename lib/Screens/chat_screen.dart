import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/providers/chat_provider.dart';
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
    final chatprovider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatprovider.messageList.length,
                itemBuilder: (context, index) {
                  // return (index % 2 == 0)
                  //     ? const FriendChatBubble()
                  //     : const PersonalChatBubble();
                  final message = chatprovider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? const FriendChatBubble()
                      : PersonalChatBubble(message: message);
                },
              ),
            ),
            // Texting Box
            MessageBox(
              onValue: (value) => chatprovider.sendMessage(value),
              //onValue: chatprovider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
