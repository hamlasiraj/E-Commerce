import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Controller/home_controller.dart';

import '../../../Core/Constant/colors.dart';

class ProductCard extends GetView<HomeControllerImp> {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToProduct();
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: AppColor.shadow, blurRadius: 5, spreadRadius: 2)
        ]),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.boxBackground,
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: CachedNetworkImageProvider(
                            "https://nyusekai.com/cdn/shop/files/17_b52a08f9-4a44-46e1-a1d8-885cc1622836.png?crop=center&height=2875&v=1687084681&width=3532"))),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: AppColor.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shirt",
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text("Essential Men's Short - Itatch Design",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 13,
                                  color: Colors.yellow.shade600,
                                ),
                                const SizedBox(width: 2),
                                Text("4.9 | 200",
                                    style:
                                        Theme.of(context).textTheme.bodySmall)
                              ]),
                          Text(
                            "2800 DZ",
                            style:
                                TextStyle(color: AppColor.green, fontSize: 16),
                          ),
                        ],
                      )
                    ]), //----------------Text Container
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductHandler extends StatelessWidget {
  const ProductHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return const ProductCard();
          }),
    );
  }
}
