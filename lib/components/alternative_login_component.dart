import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oprehab/screens/register_page.dart';
import 'package:oprehab/widgets/widgets.dart';
import 'package:oprehab/styles/layout_spacing.dart';

class AlternativeLogin extends StatelessWidget {
  const AlternativeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          OrDivider(),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: SvgPicture.asset('assets/images/icons/fbico.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: SvgPicture.asset('assets/images/icons/googleico.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child:
                      SvgPicture.asset('assets/images/icons/linkedinico.svg'),
                ),
              ],
            ),
          ),
          Space(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            child: Text(
              "Don't Have an Account Yet?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
