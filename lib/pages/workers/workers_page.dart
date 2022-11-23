import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersPage extends StatelessWidget {
  const WorkersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorkersPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/workers/ever'),
              child: const Text('Ever Worker'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/workers/once'),
              child: const Text('Once Worker'),
            ),
          ],
        ),
      ),
    );
  }
}
