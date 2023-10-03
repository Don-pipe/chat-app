import 'package:flutter/material.dart';

class PersonalChatBubble extends StatelessWidget {
  const PersonalChatBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _LeftBubble(),
      ],
    );
  }
}

class _LeftBubble extends StatelessWidget {
  const _LeftBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Colors = Theme.of(context).colorScheme;
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
            child: Text(
              'Hello World',
            ),
            decoration: BoxDecoration(
              color: Colors.primary.withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
