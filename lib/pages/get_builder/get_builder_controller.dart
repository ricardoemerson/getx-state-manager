import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  var name = 'Ricardo Emerson';
  var counter = 0;

  void changeName() {
    name = 'Ricardo Jardim';
    update();
  }

  void increment() {
    counter++;
    name = 'Richard';
    update(['counter', 'name']);
  }
}
