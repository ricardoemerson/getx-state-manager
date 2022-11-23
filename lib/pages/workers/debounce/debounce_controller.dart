import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DebounceController extends GetxController {
  final _workers = <Worker>[];
  final _name = 'Ricardo Emerson'.obs;

  String get name => _name.value;

  @override
  void onInit() {
    super.onInit();

    final debounceWorker = debounce<String>(
      _name,
      (name) {
        debugPrint('=> => => => => Executando o worker debounce: $name');
      },
      time: const Duration(milliseconds: 500),
      cancelOnError: true,
      // condition: () => _name.value.startsWith('Ri'),
    );

    _workers.add(debounceWorker);
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
