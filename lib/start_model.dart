import 'package:flutter/material.dart';

class StartModel extends ChangeNotifier {
  String datetime = '2020年9月27日';

  void changeDatetime() {
    datetime = '2020年10月27日';
    notifyListeners();
  }
}
