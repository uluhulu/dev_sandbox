import 'package:dev_sandbox/try_getx/presentation/controller/controller_counter.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Clicks: ${controller.count}"))),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(Other()),
          child: Text('Navigate to another screen'),
        ),
      ),
    );
  }
}

class Other extends StatelessWidget {
  Other({super.key});
  final CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(child: Text("${controller.count}")),
    );
  }
}
