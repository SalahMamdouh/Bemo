import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final void Function() onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(7),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.withOpacity(0.3),
              Colors.grey.withOpacity(0.2),
              Colors.grey.withOpacity(0.3),
            ],
          ),
        ),
        child: Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
