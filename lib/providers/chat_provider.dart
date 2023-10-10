import 'package:flutter/material.dart';
import '../config/get_api_answer.dart';
import '../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getApiAnswer apiAnswer = getApiAnswer();

  List<Message> messageList = [
    Message(text: 'Hola Amor!', fromWho: FromWho.me),
    Message(text: 'Ya terminaste?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      return await friendMessage();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> friendMessage() async {
    final friendMessage = await apiAnswer.getAnswer();
    messageList.add(friendMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }
}
