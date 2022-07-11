import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  final String message;

  EmptyScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(
          height: 1.5,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
