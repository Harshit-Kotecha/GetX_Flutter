import 'package:get/get.dart';

class NewController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    print(count);
    count += 2;
  }
}
