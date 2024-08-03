import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image
        Image.asset('assets/images/get_notified.png'),

        // description
        const CustomTxt(
          txt: 'Location-Based Reminders',
          color: Colors.black,
          size: 18,
          font: true,
          logo: false,
          bold: true,
        ),
        const SizedBox(height: 10),
        const CustomTxt(
          txt: "Get notified about your lists whenever you leave a designated place. Our app ensures you never forget anything, giving you timely reminders as you go about your day.",
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
