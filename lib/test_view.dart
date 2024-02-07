import 'dart:convert';

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/linkapi.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  bool loading = true;

  getData() async {
    loading = true;

    try {
      var response = await http.post(Uri.parse(AppLink.homepage), body: {});
      var responsebody = jsonDecode(response.body);
      print(responsebody);
    } catch (e) {
      print("Error $e");
    }
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    // initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: loading == true
            ? const Center(child: CircularProgressIndicator())
            : const Text("Title"),
        backgroundColor: AppColor.primaryColor,
      ),
      body: const Text("dd"),
    );
  }
}
