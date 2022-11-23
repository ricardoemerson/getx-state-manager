import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ever_controller.dart';

class EverPage extends StatelessWidget {
  final controller = Get.find<EverController>();

  EverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EverPage'),
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
