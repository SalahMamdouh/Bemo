import 'package:flutter/cupertino.dart';

class ListController with ChangeNotifier {
  int _type = -1;

  int get type => _type;

  void setType(int type) {
    _type = type;
    notifyListeners();
  }
}
