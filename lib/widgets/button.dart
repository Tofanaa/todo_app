import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';

class Button extends StatelessWidget {
  final String labelButton;
  final Function()? onPressed;
  const Button({
    super.key,
    required this.labelButton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: ColorsPallete.gradient1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          labelButton,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
