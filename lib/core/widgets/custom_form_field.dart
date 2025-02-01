import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.controller,
    this.onSubmit,
    this.validate,
    this.hintText,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final void Function(String)? onSubmit;
  final dynamic validate;
  final String? hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      style: TextStyle(
        letterSpacing: 2,
      ),
      controller: controller,
      onFieldSubmitted: onSubmit,
      validator: validate,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
      ),
    );
  }
}
