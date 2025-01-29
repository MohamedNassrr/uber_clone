import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.text,
    required this.color,
    required this.onPressed,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.image,
  });

  final double height;
  final double width;
  final double radius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;
  final Color color;
  final Color? textColor;
  final void Function() onPressed;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
