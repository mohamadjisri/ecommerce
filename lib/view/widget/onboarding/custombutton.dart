import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
          textColor: Colors.white,
          color: AppColor.primaryColor,
          onPressed: () {
            controller.next();
          },
          child: Text(
            "8".tr,
          )),
    );
  }
}
