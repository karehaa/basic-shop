import 'package:basic_shop1/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton(
      {super.key, required this.buttonText, this.buttonFunction});

  final String buttonText;
  final void Function()? buttonFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 332,
      height: 43,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorPallete.primary[900]),
      child: GestureDetector(
        onTap: buttonFunction,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: ColorPallete.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
