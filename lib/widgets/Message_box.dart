import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageBox({
    Key? key,
    required this.onValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    // Theme Controller
    final themeColors = Theme.of(context).colorScheme;
    // Screen Size
    final screenSize = MediaQuery.of(context).size;
    // Text Input field decoration
    var InputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: themeColors.primary),
      borderRadius: BorderRadius.circular(25),
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: screenSize.width * 0.95,
        height: 50,
        child: TextFormField(
          focusNode: focusNode,
          onTapOutside: (event) => focusNode.unfocus(),
          controller: textController,
          decoration: InputDecoration(
            hintText: 'End your message with?',
            enabledBorder: InputBorder,
            focusedBorder: InputBorder,
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send, color: Colors.green),
              onPressed: () {
                final textValue = textController.value.text;
                textController.clear();
                onValue(textValue);
              },
            ),
          ),
          onFieldSubmitted: (value) {
            final value = textController.value.text;
            focusNode.requestFocus();
            textController.clear();
            onValue(value);
            print("$value");
          },
        ),
      ),
    );
  }
}
