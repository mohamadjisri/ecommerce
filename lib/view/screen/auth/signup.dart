import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          CustomTextTitleAuth(
            text: "10".tr,
          ),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.username,
            hinttext: "23".tr,
            iconData: Icons.person_outline,
            labeltext: "20".tr,
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "22".tr,
            iconData: Icons.phone,
            labeltext: "21".tr,
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller:
          ),
          CustomButtonAuth(
              text: "17".tr,
              onPressed: () {
                controller.signUp();
              }),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
              textone: "25".tr,
              texttwo: "26".tr,
              onTap: () {
                controller.goToSignIn();
              }),
        ]),
      ),
    );
  }
}