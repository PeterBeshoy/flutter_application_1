import 'package:flutter/material.dart';

class ToggleSelection extends StatelessWidget {
  const ToggleSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Toggle Selection'),
      ),
      body: const Center(
        child: Text('Toggle Selection Screen'),
      ),
    );
  }
}