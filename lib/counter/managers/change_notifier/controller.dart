import 'package:flutter/cupertino.dart';

class ChangeNotifierController extends ChangeNotifier {
  int counterValue = 0;

  void increment() {
    counterValue++;
    notifyListeners();
  }

  void decrement() {
    counterValue--;
    notifyListeners();
  }
}
