import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';

class TextForm extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const TextForm({
    super.key,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: ColorsPallete.gradient1),
      cursorColor: ColorsPallete.borderColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: ColorsPallete.borderColor),
        contentPadding: const EdgeInsets.all(24),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsPallete.borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsPallete.gradient1,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
      ),
    );
  }
}
