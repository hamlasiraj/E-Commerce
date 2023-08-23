import 'package:get/get.dart';

import '../Core/Constant/routes.dart';

abstract class ProductDetailsController extends GetxController {
  backToHome();
  goToCart();
  buyNow();
}

class ProductDetailsControllerImp extends ProductDetailsController {
  @override
  backToHome() {
    Get.back();
  }

  @override
  buyNow() {
    // TODO: send product details to cart
  }

  @override
  goToCart() {
    Get.toNamed(AppRoutes.cart);
  }
}
