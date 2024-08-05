import 'package:bemo/components/custom_txt.dart';
import 'package:flutter/material.dart';

class AddList extends StatelessWidget {
  const AddList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
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
                  child: const Padding(
                    padding: EdgeInsets.all(50),
                    child: Icon(Icons.question_mark_outlined),
                  ),
                ),

                const SizedBox(height: 20),

                // icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // custom
                    Card(
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
                          'assets/icons/daily_use.png',
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),

                    // work
                    Card(
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
                          'assets/icons/work.png',
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),

                    // school
                    Card(
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
                          'assets/icons/school.png',
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),

                    // trip
                    Card(
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
                          'assets/icons/trip.png',
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // txt
                    const CustomTxt(
                      txt: 'List Name',
                      color: Colors.black,
                      size: 16,
                      font: true,
                      logo: false,
                      bold: false,
                    ),

                    const SizedBox(height: 5),

                    // field
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // list
                // locations
                // add btn
              ],
            ),
          ),
        ),
      ),
    );
  }
}
