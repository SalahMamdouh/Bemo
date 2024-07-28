import 'package:flutter/material.dart';

class CustomTxt extends StatelessWidget {
  const CustomTxt({
    super.key,
    required this.txt,
    required this.color,
    required this.size,
    required this.bold,
  });

  final String txt;
  final Color color;
  final double size;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: bold ? FontWeight.bold : null,
      ),
    );
  }
}
