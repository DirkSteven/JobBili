import 'package:flutter/material.dart';
import 'package:oprehab/styles/layout_spacing.dart';
import 'package:oprehab/components/components.dart';
import 'package:oprehab/widgets/base_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseContainer(
        child: const Column(children: [
      const LogoAndText(),
      const Space(),
      const LoginField(),
      const Space(),
      const AlternativeLogin()
    ]));
  }
}
