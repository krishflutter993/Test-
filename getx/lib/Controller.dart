import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      count--;
    } else {
      Get.snackbar("Error", "Count cannot be less than 0");
    }
  }
}
