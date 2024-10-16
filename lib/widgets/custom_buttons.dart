import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50.0,
        child: OutlinedButton(
          onPressed: () {
            print("presed");
          },
          child: Text(
            "Submit",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: BorderSide(width: 2.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ));
  }
}
