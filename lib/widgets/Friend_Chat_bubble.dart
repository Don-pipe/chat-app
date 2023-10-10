import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

import '../config/get_api_answer.dart';

class FriendChatBubble extends StatelessWidget {
  final Message message;
  const FriendChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _RigthBubble(message: message.text),
        _ImageBubble(imageUrl: message.imageUrl!),
      ],
    );
  }
}

class _RigthBubble extends StatelessWidget {
  final String message;

  const _RigthBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 150,
        top: 10,
        bottom: 10,
      ),
      child: Container(
        height: 50,
        //width: 10,
        padding: const EdgeInsets.only(
          top: 2,
          left: 10,
          right: 5,
        ),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: colors.secondary.withOpacity(0.7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(message),
      ),
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;
  const _ImageBubble({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gifSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2,
          left: 10,
          right: 5,
        ),
        child: Image.network(
          //'https://yesno.wtf/assets/yes/0-c44a7789d54cbdcad867fb7845ff03ae.gif',
          imageUrl,
          width: (gifSize.width * 0.5),
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: (gifSize.width * 0.5),
              height: 150,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: const Text('Incoming Text'),
            );
          },
        ),
      ),
    );
  }
}
