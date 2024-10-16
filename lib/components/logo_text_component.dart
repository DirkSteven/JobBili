import 'package:flutter/material.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText ({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset("assets/images/logos/logo.png"),
                  Text(
                    "Welcome to Lorem Ipsum",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith()
                  )
                ],
              ),
            );
  }
}