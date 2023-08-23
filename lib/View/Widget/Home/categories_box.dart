import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Column(
        children: [
          const SmallBox(
              img: "https://cdn-icons-png.flaticon.com/512/3531/3531881.png"),
          const SizedBox(height: 5),
          Text(
            "Shirt",
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      ),
    );
  }
}

class CategoriesHandler extends StatelessWidget {
  const CategoriesHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      height: 100,
      color: AppColor.white,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CategoriesBox();
        },
      ),
    );
  }
}

class SmallBox extends StatelessWidget {
  final String img;
  const SmallBox({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: Image.network(img),
      ),
    );
  }
}
