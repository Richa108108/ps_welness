import 'package:flutter/material.dart';
import 'package:ps_welness_new_ui/constants/constants/constants.dart';
//import 'package:ps_welness/constants/constants/constants.dart';

import 'neumorphic_text_field_container.dart';

class RectangularInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const RectangularInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextFieldContainer(
      child: TextField(
        cursorColor: black,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: TextStyle(
            color: black.withOpacity(0.7),
            fontSize: 18,
          ),
          prefixIcon: Icon(
            icon,
            color: black.withOpacity(0.7),
            size: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
