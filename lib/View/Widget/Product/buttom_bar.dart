import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';

class CustomButtomBar extends StatelessWidget {
  const CustomButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: AppColor.boxBackground,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Price:",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColor.black),
              ),
              const SizedBox(height: 5),
              Text(
                "3000 DZ",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: AppColor.green),
              )
            ],
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
            onPressed: () {},
            textColor: Colors.white,
            color: AppColor.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Text("Buy Now", style: Theme.of(context).textTheme.bodyLarge),
          )
        ],
      ),
    );
  }
}
