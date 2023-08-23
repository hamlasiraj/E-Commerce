import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Controller/product_details_controller.dart';

class ProductDetailsTopBar extends GetView<ProductDetailsControllerImp> {
  const ProductDetailsTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                controller.backToHome();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 23,
              )),
          IconButton(
              onPressed: () {
                controller.goToCart();
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 26,
              ))
        ],
      ),
    );
  }
}
