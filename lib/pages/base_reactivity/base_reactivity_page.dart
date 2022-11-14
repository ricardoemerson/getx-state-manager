import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseReactivityPage extends StatelessWidget {
  final _counter = 0.obs;

  BaseReactivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Reatividade'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter'),
            Obx(() {
              return Text('${_counter.value}');
            }),
            ElevatedButton(
              onPressed: () {
                _counter.value++;
              },
              child: const Text('Add 1'),
            )
          ],
        ),
      ),
    );
  }
}
