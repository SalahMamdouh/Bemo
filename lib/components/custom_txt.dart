import 'package:flutter/material.dart';

class CustomTxt extends StatelessWidget {
  const CustomTxt({
    super.key,
    required this.txt,
    required this.color,
    required this.size,
    required this.font,
    required this.logo,
    required this.bold,
  });

  final String txt;
  final Color color;
  final double size;
  final bool font;
  final bool logo;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: font
            ? logo
                ? 'logoFont'
                : ''
            : null,
        fontWeight: bold ? FontWeight.bold : null,
      ),
    );
  }
}
