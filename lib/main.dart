import 'package:flutter/material.dart';
import 'package:yesnoapp/Screens/screens.dart';
import 'package:yesnoapp/themes/themes_global.dart';

void main() => runApp(const yesnoApp());

class yesnoApp extends StatelessWidget {
  const yesnoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes No App',
      initialRoute: 'chat_screen',
      routes: {
        'home_screen': (context) => HomeScreen(),
        'chat_screen': (context) => ChatScreen(),
      },
      theme: AppTheme(SelectedColor: 1).theme(),
    );
  }
}
