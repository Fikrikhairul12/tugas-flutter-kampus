import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
        backgroundColor: Colors.blue,
      ),
      body: const Row(
        children: [
          Text('baris 1'),
          Text('baris 2'),
          Text('baris 3'),
        ],
      ),
    );
  }
}