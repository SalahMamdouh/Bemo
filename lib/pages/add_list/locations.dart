import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // txt
        CustomTxt(
          txt: 'Set your Locations',
          color: Colors.black,
          size: 18,
          font: true,
          logo: false,
          bold: false,
        ),
      ],
    );
  }
}
