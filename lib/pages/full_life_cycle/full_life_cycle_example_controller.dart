import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullLifeCycleExampleController extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onInit() {
    debugPrint('onInit');

    super.onInit();
  }

  @override
  void onReady() {
    debugPrint('onReady');

    super.onReady();
  }

  @override
  void onClose() {
    debugPrint('onClose');

    super.onClose();
  }

  @override
  void onDetached() {
    debugPrint('onDetached');
  }

  @override
  void onInactive() {
    debugPrint('onInactive');
  }

  @override
  void onPaused() {
    debugPrint('onPaused');
  }

  @override
  void onResumed() {
    debugPrint('onResumed');
  }
}
