import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/view/widget/home/customappbar.dart';
import 'package:ecommerce/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp contrller = Get.put(ItemsControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {}),
          const SizedBox(height: 20),
          const ListCategoriesItems(),
        ]),
      ),
    );
  }
}
