import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int value;

  CounterProvider({this.value = 0});

  void incrementarContador() {
    value++;
    notifyListeners();
  }

  void decrementarContador() {
    value--;
    notifyListeners();
  }
}
