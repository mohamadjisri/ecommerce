import 'package:ecommerce/controller/test_controller.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(child: Text("Loading"));
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return const Center(child: Text("Offline Failure"));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return const Center(child: Text("Server Failure"));
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}
