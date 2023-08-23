import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.storefront, color: AppColor.smallText),
            const SizedBox(width: 5),
            Text("Djafer Store",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColor.smallText, fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          "Itachi T-Shirt Collection 9 ",
          style: Theme.of(context).textTheme.headlineLarge,
        )
      ],
    );
  }
}
