import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class PersonalChatBubble extends StatelessWidget {
  final Message message;
  const PersonalChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _LeftBubble(message: message.text),
      ],
    );
  }
}

class _LeftBubble extends StatelessWidget {
  final String message;
  const _LeftBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 150,
            right: 10,
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
              color: colors.primary.withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              message,
            ),
          ),
        ),
      ],
    );
  }
}
