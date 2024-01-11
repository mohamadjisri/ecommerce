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
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const CustomTextTitleAuth(
            text: "Welcome Back",
          ),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.username,
            hinttext: "Enter Your Username",
            iconData: Icons.person_outline,
            labeltext: "Username",
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "Enter Your Phone",
            iconData: Icons.phone,
            labeltext: "Phone",
            // mycontroller:
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller:
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
          CustomButtonAuth(text: "Sign Up", onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
              textone: "Have An Account? ",
              texttwo: " Sign In",
              onTap: () {
                controller.goToSignIn();
              }),
        ]),
      ),
    );
  }
}
