import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image
        Image.asset('assets/images/create_list.png'),

        // description
        const CustomTxt(
          txt: 'Stay Organized',
          color: Colors.black,
          size: 18,
          font: true,
          logo: false,
          bold: true,
        ),
        const SizedBox(height: 10),
        const CustomTxt(
          txt: 'Create lists to keep track of everything you need to do. Our app helps you stay organized and never miss a detail.',
          color: Colors.black,
          size: 16,
          font: true,
          logo: false,
          bold: false,
        ),
      ],
    );
  }
}
