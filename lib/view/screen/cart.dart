// ignore_for_file: prefer_const_constructors
import 'package:ecommerce/view/widget/cart/appbarcart.dart';
import 'package:ecommerce/view/widget/cart/custom_bottom_navgationbar_cart.dart';
import 'package:ecommerce/view/widget/cart/customitemscartlist.dart';
import 'package:ecommerce/view/widget/cart/topcardcart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavgationBarCart(
            price: "1200", shipping: "300", totalprice: "1500"),
        body: ListView(
          children: [
            TopAppbarCart(
              title: 'My Cart',
            ),
            SizedBox(height: 10),
            TopCardCart(message: "You Have 2 Items in Your List"),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: const [
                  CustomItemsCartList(
                      name: "Macbook M1", price: "1100.0 \$", count: "2"),
                  CustomItemsCartList(
                      name: "Macbook M2 Max", price: "2100.0 \$", count: "1"),
                ],
              ),
            )
          ],
        ));
  }
}
