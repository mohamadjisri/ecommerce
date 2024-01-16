import 'package:ecommerce/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
           CustomTextTitleAuth(
            text: "35".tr,
          ),
          const SizedBox(height: 10),
           CustomTextBodyAuth(text: "35".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Re" + "" + "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Re" + "" + "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller:
          ),
          CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
