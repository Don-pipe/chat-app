import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
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
          decoration: InputDecoration(
            enabledBorder: InputBorder,
            focusedBorder: InputBorder,
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send, color: Colors.green),
              onPressed: () {},
            ),
          ),
          onFieldSubmitted: (value) => print('Submit Value $value'),
          onChanged: (value) => print("Changed $value"),
        ),
      ),
    );
  }
}
