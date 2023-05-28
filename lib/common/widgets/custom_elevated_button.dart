import 'package:flutter/material.dart';
import 'package:whatsflut/common/utils/color_pallete.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String buttonText;

  const CustomElevatedButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
