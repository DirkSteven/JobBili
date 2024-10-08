import 'package:flutter/material.dart';
import 'package:oprehab/styles/layout_spacing.dart';

import 'package:oprehab/widgets/local_widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Jobbili")),

      body: Container(
        alignment: Alignment.center,
        padding: Paddings.containerPaddingAll,
        margin: Margins.containerMarginAll,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/logos/logo.png"),
                  Text(
                    "Welcome to Lorem Ipsum",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: const [
                  GenericTextField(
                    label: "Username",
                  ),
                  Space(),
                  GenericTextField(
                    label: "Password",
                    isObscuredText: true,
                  ),
                  Space(),
                  Text("Submit")
                ],
              ),
              Column(
                children: [
                  Text("Divider"),
                  Text("LoginAlternatives"),
                  Text("Register")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
