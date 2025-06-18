import 'dart:collection';

import 'package:dev_sandbox/notifiers/cart/domain/entity/cart_entity.dart';
import 'package:flutter/material.dart';

class CartNotifier extends ChangeNotifier {
  final List<Item> _items = [Item('banan'), Item('banan')];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
