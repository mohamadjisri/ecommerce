import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose Language",
                  style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 20),
              CustomButtomLang(textbuttom: "Ar", onPressed: () {}),
              CustomButtomLang(textbuttom: "En", onPressed: () {}),
            ],
          )),
    );
  }
}
