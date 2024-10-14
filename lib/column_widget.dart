import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [
          Text('kolom 1'),
          Text('kolom 2'),
          Text('kolom 3'),
        ],
      ),
    );
  }
}