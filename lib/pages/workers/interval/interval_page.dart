import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'interval_controller.dart';

class IntervalPage extends StatelessWidget {
  final controller = Get.find<IntervalController>();

  IntervalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntervalPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: controller.changeName,
            ),
            Obx(() {
              return Text(
                controller.name,
                style: const TextStyle(fontSize: 20),
              );
            }),
          ],
        ),
      ),
    );
  }
}
