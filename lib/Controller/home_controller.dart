import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Core/Class/status_request.dart';
import 'package:store/Core/Constant/routes.dart';

import '../../Core/Function/handling_data.dart';
import '../../Core/Services/services.dart';
import '../../Data/Datasource/Remote/Auth/signin.dart';

abstract class HomeController extends GetxController {
  goToCart();
  goToProduct();
}

class HomeControllerImp extends HomeController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController search;

  @override
  goToCart() {
    Get.toNamed(AppRoutes.cart);
  }

  @override
  goToProduct() {
    Get.toNamed(AppRoutes.productDetails);
  }

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }
}
