import 'package:flutter/material.dart';
import 'package:oprehab/styles/colors.dart';


class GenericTextField extends StatelessWidget {
  final String textFieldlabel;
  final bool isObscureText; 

  const GenericTextField({super.key, required String label, bool? isObscuredText})
      : textFieldlabel = label,  isObscureText = isObscuredText ?? false;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12.0); 

    return SizedBox(
      width: double.infinity,
      child: TextField(
        obscureText: isObscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color(LocalColors.accent), width: 2.00),
            borderRadius: borderRadius, // Use common border radius
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(LocalColors.error_colors)),
            borderRadius: borderRadius, // Use common border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color(LocalColors.accent), width: 4.00),
            borderRadius: borderRadius, // Use common border radius
          ),
          labelText: textFieldlabel,
          
        ),
      ),
    );
  }
}
