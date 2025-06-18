import 'package:dev_sandbox/notifiers/cart/presentation/cart_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const GetMaterialApp(home: CounterHome());
    // return MaterialApp(home: ListPage());
    return MaterialApp(home: CartMainPage());
  }
}
