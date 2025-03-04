import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the first screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}