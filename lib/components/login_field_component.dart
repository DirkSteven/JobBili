import 'package:flutter/material.dart';
import 'package:oprehab/widgets/widgets.dart';
import 'package:oprehab/styles/layout_spacing.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                const GenericTextField(
                  label: "Username",
                  suffixIcon: Icons.person,
                ),
                Space(),
                const GenericTextField(
                  label: "Password",
                  isObscuredText: true,
                  suffixIcon: Icons.remove_red_eye,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          Space(),
          SubmitButton()
,
        ],
      ),
    );
  }
}
