import 'package:flutter/material.dart';
import 'package:uber_clone/core/widgets/custom_form_field.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();

    return CustomFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      hintText: '01234567000',
    );
  }
}
