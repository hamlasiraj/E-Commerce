import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/Controller/on_bording_ctr.dart';

import '../../../Core/Constant/colors.dart';

class AuthButton extends GetView<OnBordingControllerImp> {
  final void Function()? onPressed;
  final String hint;
  const AuthButton({super.key, required this.onPressed, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
        onPressed: onPressed,
        textColor: Colors.white,
        color: AppColor.boxBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          hint,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
