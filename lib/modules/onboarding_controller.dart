import 'package:flutter/foundation.dart';

class IndicatorModel with ChangeNotifier {
  int _page = 0;

  int get count => _page;

  void increment() {
    _page == 2? null : _page++;
    notifyListeners();
  }
}
