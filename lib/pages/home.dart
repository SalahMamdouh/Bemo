import 'package:bemo/components/custom_card.dart';
import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTxt(
          txt: 'Bemo',
          color: Colors.blue.withOpacity(0.7),
          size: 42,
          font: true,
          logo: true,
          bold: true,
        ),
        centerTitle: false,
        actions: [
          // add list
          Container(
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0.5),
                ],
              ),
            ),
            child: Image.asset(
              'assets/icons/add.png',
              width: 24,
              height: 24,
            ),
          ),

          // account
          Container(
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0.5),
                ],
              ),
            ),
            child: Image.asset(
              'assets/icons/account.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: GridView.builder(
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return CustomCard(
              onTap: (){},
              cardColor: Colors.brown,
              image: 'assets/icons/work.png',
              txt: 'Work',
            );
          },
        ),
      ),
    );
  }
}
