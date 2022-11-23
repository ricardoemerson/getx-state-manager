import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'once_controller.dart';

class OncePage extends StatelessWidget {
  final controller = Get.find<OnceController>();

  OncePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OncePage'),
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
