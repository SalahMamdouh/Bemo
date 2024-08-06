import 'package:bemo/components/custom_btn.dart';
import 'package:bemo/components/custom_txt.dart';
import 'package:bemo/modules/list_controller.dart';
import 'package:bemo/pages/add_list/info.dart';
import 'package:bemo/pages/add_list/list_content.dart';
import 'package:bemo/pages/add_list/locations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddList extends StatelessWidget {
  AddList({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListController(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: CustomTxt(
              txt: context.watch<ListController>().page == 0
                  ? 'Info'
                  : context.watch<ListController>().page == 1
                      ? 'Data'
                      : 'Locations',
              color: Colors.black,
              size: 22,
              font: true,
              logo: false,
              bold: false,
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Stack(
                children: [
                  // indicators
                  Row(
                    children: [
                      // info
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

                      // data
                      Expanded(
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: context.watch<ListController>().page >= 1
                                ? Colors.black
                                : Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // locations
                      Expanded(
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: context.watch<ListController>().page >= 2
                                ? Colors.black
                                : Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // content
                  PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      Info(),
                      ListContent(),
                      Locations(),
                    ],
                  ),

                  // btns
                  Row(
                    children: [
                      // back btn
                      context.watch<ListController>().page >= 1
                          ? Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: CustomBtn(
                                  onTap: () {
                                    _pageController.previousPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeIn,
                                    );
                                    Provider.of<ListController>(
                                      context,
                                      listen: false,
                                    ).previousIndicator();
                                  },
                                  txt: 'Back',
                                  color: Colors.black,
                                  size: 18,
                                  bold: true,
                                  withBackground: false,
                                ),
                              ),
                            )
                          : const SizedBox(),

                      // next btn
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomBtn(
                            onTap: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                              Provider.of<ListController>(
                                context,
                                listen: false,
                              ).nextIndicator();
                            },
                            txt: context.watch<ListController>().page == 2? 'Done' : 'Next',
                            color: Colors.white,
                            size: 18,
                            bold: true,
                            withBackground: true,
                          ),
                        ),
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
