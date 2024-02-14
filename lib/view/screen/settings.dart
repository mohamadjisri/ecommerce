import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageassest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3, color: AppColor.primaryColor),
                Positioned(
                    top: Get.width / 3.9,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        backgroundImage: const AssetImage(AppImageAsset.avatar),
                      ),
                    )),
              ]),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  title: Text("title one"),
                ),
                Divider(),
                ListTile(
                  title: Text("title one"),
                ),
                Divider(),
                ListTile(
                  title: Text("title one"),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
