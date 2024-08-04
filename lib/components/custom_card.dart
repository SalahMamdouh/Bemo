import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.onTap,
    required this.cardColor,
    required this.image,
    required this.txt,
  });

  final void Function() onTap;
  final Color cardColor;
  final String image;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        surfaceTintColor: cardColor,
        child: Column(
          children: [
            // image
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  image,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // target location
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: CustomTxt(
                txt: txt,
                color: Colors.black,
                size: 16,
                font: true,
                logo: false,
                bold: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
