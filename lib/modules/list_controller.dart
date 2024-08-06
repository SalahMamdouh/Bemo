import 'package:flutter/cupertino.dart';

class ListController with ChangeNotifier {
  int _type = -1;
  int _page = 0;

  int get type => _type;
  int get page => _page;

  // next indicators
  void nextIndicator() {
    _page == 2? null : _page++;
    notifyListeners();
  }

  // previous indicators
  void previousIndicator() {
    _page == 0? null : _page--;
    notifyListeners();
  }

  // set list types
  void setType(int type) {
    _type = type;
    notifyListeners();
  }
}
