import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EverController extends GetxController {
  final _workers = <Worker>[];
  final _name = 'Ricardo Emerson'.obs;

  String get name => _name.value;

  @override
  void onInit() {
    super.onInit();

    final everWorker = ever(
      _name,
      (name) {
        debugPrint('Executando o worker ever: $name');
      },
      cancelOnError: true,
      condition: () => _name.value.startsWith('Ri'),
    );

    _workers.add(everWorker);
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
