import 'package:dev_sandbox/notifiers/cart/presentation/cart_notifier/cart_notifier.dart';
import 'package:dev_sandbox/notifiers/cart/presentation/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartMainPage extends StatelessWidget {
  const CartMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CartNotifier(),
      child: CartPage(),
    );
  }
}
