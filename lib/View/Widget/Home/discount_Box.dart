import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';
import '../../../Core/Constant/imageAssets.dart';

class DiscountBox extends StatelessWidget {
  const DiscountBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      height: 110,
      child: Stack(children: [
        Positioned(
            child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: AppColor.boxBackground,
              borderRadius: BorderRadius.circular(100)),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("#BAC 2024",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 5),
                  Text("20% OFF",
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 5),
                  Text("Customize your own shirt",
                      style: Theme.of(context).textTheme.headlineSmall)
                ],
              ),
              SizedBox(
                height: 80,
                child: Image.asset(
                  "${AppImageAsset.rootImage}/discount.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
