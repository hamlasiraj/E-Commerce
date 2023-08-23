import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/home_controller.dart';
import '../../../Core/Constant/colors.dart';
import '../../../Core/Function/valid_input.dart';
import '../Auth/custom_text_field.dart';

class HomeTopBar extends GetView<HomeControllerImp> {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      color: AppColor.backgroundColor,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: "Search",
                  icon: Icons.search,
                  valid: (val) {
                    return validInput(val!, 1, 50, "search");
                  },
                  myController: controller.search,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                    onPressed: () {
                      controller.goToCart();
                    },
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 26,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
