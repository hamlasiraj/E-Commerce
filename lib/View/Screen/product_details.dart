import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Controller/product_details_controller.dart';
import 'package:store/Core/Constant/colors.dart';
import 'package:store/View/Widget/Auth/auth_button.dart';
import 'package:store/View/Widget/Home/categories_box.dart';
import 'package:store/View/Widget/OnBording/custom_button.dart';
import 'package:store/View/Widget/Product/buttom_bar.dart';
import 'package:store/View/Widget/Product/product_description.dart';
import 'package:store/View/Widget/Product/product_viewer.dart';
import 'package:store/View/Widget/Product/top_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: const CustomButtomBar(), //---------Buttom Bar
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: const [
          ProductDetailsTopBar(), //----------------------------Top Bar
          ProductViewer(), //--------------------------Product Viewer
          ProductDescription(), //--------------------Product Description
        ]),
      ),
    );
  }
}
