import 'package:dev_sandbox/notifiers/cart/domain/entity/cart_entity.dart';
import 'package:dev_sandbox/notifiers/cart/domain/services/change_notifier_extension.dart';
import 'package:dev_sandbox/notifiers/cart/presentation/cart_notifier/cart_notifier.dart';
import 'package:dev_sandbox/notifiers/list/presentation/list_notifier/list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  test('Add new item', () {
    final listNotifier = ListNotifier();

    listNotifier.add(98928933);

    expect(listNotifier.list.length, 1);
  });

  test('adding item increases total cost', () {
    final cart = CartNotifier();
    final startingPrice = cart.totalPrice;
    cart.addListener(() {
      expect(cart.totalPrice, greaterThan(startingPrice));
    });
    cart.add(Item('banan'));
  });

  test('test notify listener', () {
    final cart = CartNotifier();

    cart.addOneTimeListener(() {
      debugPrint("Run callback");
    });
    cart.notifyListeners();
    cart.notifyListeners();
    cart.notifyListeners();
  });
}
