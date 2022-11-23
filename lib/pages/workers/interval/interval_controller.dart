import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntervalController extends GetxController {
  final _workers = <Worker>[];
  final _name = 'Ricardo Emerson'.obs;

  String get name => _name.value;

  @override
  void onInit() {
    super.onInit();

    final intervalWorker = interval<String>(
      _name,
      (name) {
        debugPrint('=> => => => => Executando o worker interval: $name');
      },
      time: const Duration(seconds: 2),
      cancelOnError: true,
      // condition: () => _name.value.startsWith('Ri'),
    );

    _workers.add(intervalWorker);
  }

  @override
  void onClose() {
    for (final worker in _workers) {
      worker();
    }

    super.onClose();
  }

  void changeName(String value) {
    _name(value);
  }
}
