import 'package:flutter/material.dart';

class CustomTypeCard extends StatelessWidget {
  const CustomTypeCard({
    super.key,
    required this.onTap,
    required this.img,
  });

  final void Function() onTap;
  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          const RoundedRectangleBorder(),
          0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            img,
            width: 34,
            height: 34,
          ),
        ),
      ),
    );
  }
}
