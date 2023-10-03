import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Course'),
      ),
      body: Center(
        child: Text('HomeScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click Me'),
        onPressed: () {},
      ),
    );
  }
}
