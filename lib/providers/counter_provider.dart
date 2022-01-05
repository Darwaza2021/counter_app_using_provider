import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  


//variable for counting
  int _count = 0;
  int get count => _count;


//methodes
  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
