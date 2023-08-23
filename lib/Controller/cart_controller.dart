import 'package:get/get.dart';

abstract class CartController extends GetxController {
  backToHome();
  increase();
  dicrease();
}

class CartControllerImp extends CartController {
  int counter = 1;

  @override
  backToHome() {
    Get.back();
  }

  @override
  dicrease() {
    counter--;
    update();
  }

  @override
  increase() {
    counter++;
    update();
    print(counter);
  }
}
