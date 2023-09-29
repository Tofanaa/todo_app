import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String labelButton;
  final Function()? onPressed;
  const ButtonText(
      {super.key, required this.labelButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        labelButton,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }
}
