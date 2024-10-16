import 'package:flutter/material.dart';
import 'package:oprehab/styles/colors.dart';
import 'package:oprehab/styles/widget_styles.dart';



class GenericTextField extends StatefulWidget {
  final String textFieldlabel;
  final bool isObscureText;
  final IconData? suffixIcon;

  const GenericTextField({
    Key? key,
    required String label,
    bool? isObscuredText,
    this.suffixIcon,
  })  : textFieldlabel = label,
        isObscureText = isObscuredText ?? false,
        super(key: key);

  @override
  _GenericTextFieldState createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isObscureText;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12.0);

    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: TextField(
        obscureText: _isObscured,
        decoration: InputDecoration(
          suffixIcon: widget.isObscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : (widget.suffixIcon != null 
                  ? Icon(widget.suffixIcon) 
                  : null),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: LocalColorsLight.accent,
                width: WidgetStyles.enabledBorderWidth),
            borderRadius: borderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: LocalColorsLight.error_colors),
            borderRadius: borderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: LocalColorsLight.accent,
                width: WidgetStyles.focusedBorderWidth),
            borderRadius: borderRadius,
          ),
          labelText: widget.textFieldlabel,
        ),
      ),
    );
  }
}







// STATELESS VERSION


// class GenericTextField extends StatelessWidget {
//   final String textFieldlabel;
//   final bool isObscureText;
//   final IconData? suffixIcon;

//   const GenericTextField(
//       {super.key, required String label, bool? isObscuredText, this.suffixIcon})
//       : textFieldlabel = label,
//         isObscureText = isObscuredText ?? false;

//   @override
//   Widget build(BuildContext context) {
//     final borderRadius = BorderRadius.circular(12.0);

//     return SizedBox(
//       width: double.infinity,
//       height: 50.0,
//       child: TextField(
//         obscureText: isObscureText,
//         decoration: InputDecoration(
//           suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: LocalColorsLight.accent,
//                 width: WidgetStyles.enabledBorderWidth),
//             borderRadius: borderRadius,
//           ),
//           errorBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: LocalColorsLight.error_colors),
//             borderRadius: borderRadius,
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: LocalColorsLight.accent,
//                 width: WidgetStyles.focusedBorderWidth),
//             borderRadius: borderRadius,
//           ),
//           labelText: textFieldlabel,
//         ),
//       ),
//     );
//   }
// }