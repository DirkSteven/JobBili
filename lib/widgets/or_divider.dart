import 'package:flutter/material.dart';


class OrDivider extends StatelessWidget {
  OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: Colors.black,
          thickness: 2.0,
        )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "OR LOGIN WITH",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.black,
          thickness: 2.0,
        ))
      ],
    );
  }
}