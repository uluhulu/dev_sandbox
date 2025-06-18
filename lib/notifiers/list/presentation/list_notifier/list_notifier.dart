import 'package:flutter/material.dart';

///ChangeNotifier  implements the Listenable
class ListNotifier extends ChangeNotifier {
  final List<int> _list = <int>[];
  List<int> get list => _list.toList();

  void add(int value) {
    _list.add(value);
    notifyListeners();
  }
}
