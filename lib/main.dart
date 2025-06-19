import 'package:dev_sandbox/try_getx/presentation/counter_home.dart';
import 'package:dev_sandbox/try_rxdart/rx_dart_behaviour_subject.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rxdart/rxdart.dart';

void main() async {
  await tryBehaviourSubject();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: CounterHome());
  }
}
