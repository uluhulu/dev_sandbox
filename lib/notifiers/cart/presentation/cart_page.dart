import 'package:dev_sandbox/notifiers/cart/presentation/cart_notifier/cart_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<CartNotifier>(
          builder: (context, cart, child) {
            return Text("Total price: ${cart.totalPrice}");
          },
        ),
      ),
    );
  }
}
