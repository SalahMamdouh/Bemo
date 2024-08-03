import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // description
        const CustomTxt(
          txt: 'Set Locations & Connect Lists',
          color: Colors.black,
          size: 18,
          font: true,
          logo: false,
          bold: true,
        ),
        const SizedBox(height: 10),
        const CustomTxt(
          txt: "Link your lists to specific locations. Whether it's a store, office, or any place.",
          color: Colors.black,
          size: 16,
          font: true,
          logo: false,
          bold: false,
        ),

        // image
        Image.asset('assets/images/set_location.png'),
      ],
    );
  }
}
