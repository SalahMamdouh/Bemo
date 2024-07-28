import 'package:bemo/components/custom_btn.dart';
import 'package:bemo/modules/onboarding_controller.dart';
import 'package:bemo/pages/onboarding/onboarding_1.dart';
import 'package:bemo/pages/onboarding/onboarding_2.dart';
import 'package:bemo/pages/onboarding/onboarding_3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  Root({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndicatorModel(),
      builder: (context, child) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            color: const Color.fromRGBO(255, 223, 214, 0.7),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // indicators
                  Row(
                    children: [
                      // create lists
                      Expanded(
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // link location
                      Expanded(
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: context.watch<IndicatorModel>().count >= 1
                                ? Colors.black
                                : Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // get notified
                      Expanded(
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: context.watch<IndicatorModel>().count >= 2
                                ? Colors.black
                                : Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // image & description
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        // lists
                        Onboarding1(),

                        // location
                        Onboarding2(),

                        // notify
                        Onboarding3(),
                      ],
                    ),
                  ),

                  // btns
                  Column(
                    children: [
                      // next btn
                      CustomBtn(
                        onTap: () {
                          Provider.of<IndicatorModel>(
                                    context,
                                    listen: false,
                                  ).count ==
                                  2
                              ? Navigator.pushNamedAndRemoveUntil(context, '/home', (route)=> false,)
                              : _pageController.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn,
                                );
                          Provider.of<IndicatorModel>(
                            context,
                            listen: false,
                          ).increment();
                        },
                        txt: context.watch<IndicatorModel>().count == 2
                            ? 'Get Started'
                            : 'Next',
                        color: Colors.white,
                        size: 20,
                        bold: true,
                        withBackground: true,
                      ),

                      const SizedBox(height: 20),

                      // skip btn
                      CustomBtn(
                        onTap: () {
                          Provider.of<IndicatorModel>(
                                    context,
                                    listen: false,
                                  ).count ==
                                  2
                              ? null
                              : _pageController.jumpToPage(2);
                          Provider.of<IndicatorModel>(
                            context,
                            listen: false,
                          ).increment();
                          Provider.of<IndicatorModel>(
                            context,
                            listen: false,
                          ).increment();
                        },
                        txt: context.watch<IndicatorModel>().count == 2
                            ? ''
                            : 'Skip',
                        color: Colors.black,
                        size: 18,
                        bold: true,
                        withBackground: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
