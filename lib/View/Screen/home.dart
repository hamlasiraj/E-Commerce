import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:store/Controller/home_controller.dart';
import 'package:store/Core/Constant/colors.dart';
import 'package:store/Core/Constant/imageAssets.dart';
import 'package:store/Core/Function/valid_input.dart';
import 'package:store/View/Widget/Auth/auth_box.dart';
import 'package:store/View/Widget/Auth/custom_text_field.dart';
import 'package:store/View/Widget/Home/categories_box.dart';
import 'package:store/View/Widget/Home/discount_Box.dart';
import 'package:store/View/Widget/Home/product_card.dart';
import 'package:store/View/Widget/Home/topbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        body: ListView(children: [
          //----------------------------TopBar

          const HomeTopBar(),

          //----------------------------Discount Box

          const DiscountBox(),

          //----------------------------Categories Handler
          const CategoriesHandler(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text("Best Sales Products",
                style: Theme.of(context).textTheme.headlineMedium),
          ),

          //----------------------------Products Handler

          const ProductHandler()
        ]),
      ),
    );
  }
}
