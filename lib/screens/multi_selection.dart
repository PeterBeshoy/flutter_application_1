import 'package:flutter/material.dart';

class MultiSelection extends StatelessWidget {
  const MultiSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Multi Selection'),
      ),
      body: const Center(
        child: Text('Multi Selection Screen'),
      ),
    );
  }
}