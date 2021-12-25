import 'package:flutter/Material.dart';

class HomeImage with ChangeNotifier {
  int _index = 2;

  int get index => _index;

  set homeIndex(int value) {
    _index = index;
    notifyListeners();
  }
}