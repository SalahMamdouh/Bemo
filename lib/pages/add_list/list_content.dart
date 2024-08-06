import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class ListContent extends StatelessWidget {
  const ListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // txt
        const CustomTxt(
          txt: "What's on your mind?",
          color: Colors.black,
          size: 18,
          font: true,
          logo: false,
          bold: false,
        ),

        // list field
        TextFormField(
          maxLines: 10,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'List Name',
          ),
        ),
      ],
    );
  }
}
