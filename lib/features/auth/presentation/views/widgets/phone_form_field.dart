import 'package:flutter/material.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();

    return TextFormField(
      keyboardType: TextInputType.phone,
      style: TextStyle(
        letterSpacing: 2,

      ),
      controller: phoneController,
      onChanged: (value) {},
      onFieldSubmitted: (value){},
      validator: (value){
        if(value!.isEmpty){
          return 'phone number is wrong';
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: '01234567890',

      ),
    );
  }
}
