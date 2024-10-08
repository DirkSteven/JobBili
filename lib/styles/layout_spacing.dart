import 'package:flutter/material.dart';

class Paddings {
  static const EdgeInsets containerPaddingAll = EdgeInsets.all(10);
  static const EdgeInsets containerPaddingHorizontal =
      EdgeInsets.symmetric(horizontal: 20.0);
}

class Margins {
  static const EdgeInsets containerMarginAll = EdgeInsets.all(10.0);
  static const EdgeInsets containerMarginHorizontal =
      EdgeInsets.symmetric(horizontal: 10.0);
}

class Space extends StatelessWidget {
  const Space({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20.0);
  }
}
