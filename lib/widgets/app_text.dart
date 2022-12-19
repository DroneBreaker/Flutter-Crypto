import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight? bold;

  const AppText(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      this.bold});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        text,
        style: TextStyle(fontSize: size, color: color, fontWeight: bold),
      ),
    );
  }
}
