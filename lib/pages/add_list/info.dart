import 'package:bemo/components/custom_type_card.dart';
import 'package:bemo/modules/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListController(),
      builder: (context, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // selected icon
            Card(
              shape: ShapeBorder.lerp(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                const RoundedRectangleBorder(),
                0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: context.watch<ListController>().type == 0
                    ? Image.asset(
                        'assets/icons/daily_use.png',
                        width: 100,
                        height: 100,
                      )
                    : context.watch<ListController>().type == 1
                        ? Image.asset(
                            'assets/icons/work.png',
                            width: 100,
                            height: 100,
                          )
                        : context.watch<ListController>().type == 2
                            ? Image.asset(
                                'assets/icons/school.png',
                                width: 100,
                                height: 100,
                              )
                            : context.watch<ListController>().type == 3
                                ? Image.asset(
                                    'assets/icons/trip.png',
                                    width: 100,
                                    height: 100,
                                  )
                                : const Icon(
                                    Icons.question_mark_outlined,
                                    size: 100,
                                  ),
              ),
            ),

            const SizedBox(height: 20),

            // types
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // custom
                CustomTypeCard(
                  onTap: () {
                    Provider.of<ListController>(
                      context,
                      listen: false,
                    ).setType(0);
                  },
                  img: 'assets/icons/daily_use.png',
                ),

                // work
                CustomTypeCard(
                  onTap: () {
                    Provider.of<ListController>(
                      context,
                      listen: false,
                    ).setType(1);
                  },
                  img: 'assets/icons/work.png',
                ),

                // school
                CustomTypeCard(
                  onTap: () {
                    Provider.of<ListController>(
                      context,
                      listen: false,
                    ).setType(2);
                  },
                  img: 'assets/icons/school.png',
                ),

                // trip
                CustomTypeCard(
                  onTap: () {
                    Provider.of<ListController>(
                      context,
                      listen: false,
                    ).setType(3);
                  },
                  img: 'assets/icons/trip.png',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // name field
            TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'List Name',
              ),
            ),
          ],
        );
      },
    );
  }
}
