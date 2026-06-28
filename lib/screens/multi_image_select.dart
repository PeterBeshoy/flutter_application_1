import 'package:flutter/material.dart';

class MultiImageSelect extends StatelessWidget {
  const MultiImageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text('Multi Image Select '),
      ),
      body: const Center(
        child: Text('Multi Image Select Screen'),
      ),
    );
  }
}