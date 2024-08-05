import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  const Input({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(70)),
      ),
    );
  }
}
