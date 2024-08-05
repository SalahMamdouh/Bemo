import 'package:bemo/components/custom_card.dart';
import 'package:bemo/components/custom_icon_btn.dart';
import 'package:bemo/components/custom_txt.dart';
import 'package:bemo/modules/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List lists = [
    [Colors.blue, 0, 'Custom'],
    [Colors.brown, 1, 'Work'],
    [Colors.green, 2, 'School'],
    [Colors.red, 3, 'Trip'],
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListController(),
      builder: (context, child) {
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
              CustomIconBtn(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/add_list',
                  );
                },
                icon: 'assets/icons/add.png',
              ),

              // account
              CustomIconBtn(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/account',
                  );
                },
                icon: 'assets/icons/account.png',
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: GridView.builder(
              itemCount: lists.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(
                  onTap: () {},
                  cardColor: lists[index][0],
                  image: lists[index][1] == 0
                      ? 'assets/icons/daily_use.png'
                      : lists[index][1] == 1
                          ? 'assets/icons/work.png'
                          : lists[index][1] == 2
                              ? 'assets/icons/school.png'
                              : 'assets/icons/trip.png',
                  txt: lists[index][2],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
