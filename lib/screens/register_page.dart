import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oprehab/components/components.dart';
import 'package:oprehab/widgets/widgets.dart';
import 'package:oprehab/styles/layout_spacing.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        showAppBar: true,
        title: "RegisterWTF",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Space(),
            const GenericTextField(label: "Name"),
            const Space(),
            const GenericTextField(label: "Password"),
            const Space(),
            SubmitButton(),
            const Space(),
            
          ],
        ));
  }
}