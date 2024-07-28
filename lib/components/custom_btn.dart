import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onTap,
    required this.txt,
    required this.color,
    required this.size,
    required this.bold,
    required this.withBackground,
  });

  final void Function()? onTap;
  final String txt;
  final Color color;
  final double size;
  final bool bold;
  final bool withBackground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: withBackground? Colors.black : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: CustomTxt(
            txt: txt,
            color: color,
            size: size,
            bold: bold,
          ),
        ),
      ),
    );
  }
}
