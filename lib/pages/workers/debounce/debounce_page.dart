import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'debounce_controller.dart';

class DebouncePage extends StatelessWidget {
  final controller = Get.find<DebounceController>();

  DebouncePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DebouncePage'),
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
