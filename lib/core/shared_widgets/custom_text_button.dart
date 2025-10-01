import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    required this.textStyle,
  });
  final Color backgroundColor;
  final String text;
  final VoidCallback onPressed;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadiusDirectional.all(Radius.circular(16)),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: textStyle),
    );
  }
}
