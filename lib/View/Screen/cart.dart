import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Core/Constant/colors.dart';
import '../../Controller/cart_controller.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartControllerImp());
    return Scaffold(
      body: GetBuilder<CartControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.backToHome();
                      },
                      icon: const Icon(Icons.arrow_back_ios, size: 23)),
                ],
              ),
              Text(
                "My Cart",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.shadow,
                          blurRadius: 5,
                          spreadRadius: 2)
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColor.smallText)),
                          width: 90,
                          child: Image.network(
                              "https://cdn.shopify.com/s/files/1/0222/7924/products/t-shirts-madara-susanoo-t-shirt-black-s-14018927689788_1155x.png?v=1610022296"),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Susano Colliction",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            Text("T-Shirt",
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text("3000 DZ",
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        )
                      ]),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor.boxBackground,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.increase();
                              },
                              child: Text("+",
                                  style: Theme.of(context).textTheme.bodyLarge),
                            ),
                            InkWell(
                              onTap: () {
                                controller.counter;
                              },
                              child: Text("${controller.counter}",
                                  style: Theme.of(context).textTheme.bodyLarge),
                            ),
                            InkWell(
                              onTap: () {
                                controller.dicrease();
                              },
                              child: Text("-",
                                  style: Theme.of(context).textTheme.bodyLarge),
                            )
                          ],
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
