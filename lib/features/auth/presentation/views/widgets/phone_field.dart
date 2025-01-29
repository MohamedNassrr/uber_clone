import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/features/auth/presentation/views/widgets/phone_form_field.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Mobile Phone',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.grey)),
                child: CountryCodePicker(
                  initialSelection: 'eg',
                  showFlag: true,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: PhoneFormField(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
