import 'package:flutter/material.dart';
import 'package:uber_clone/core/widgets/custom_text_button.dart';
import 'package:uber_clone/features/auth/presentation/views/widgets/google_and_email_form.dart';
import 'package:uber_clone/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:uber_clone/features/auth/presentation/views/widgets/the_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 65,
        left: 16,
        right: 16,
        bottom: 16
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.black),
              child: Center(
                child: Text(
                  'Uberr',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Get Started with Uberr',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          PhoneField(),
          SizedBox(height: 10),
          CustomTextButton(
            height: 50,
            width: double.infinity,
            radius: 8,
            text: 'Continue',
            color: Colors.black,
            onPressed: () {},
            textColor: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 20),
          TheDivider(),
          SizedBox(height: 20),
          GoogleAndEmailFormField(),
          Spacer(),
          Text(
            'By proceeding, you consent to receiving calls, WhatsApp or SMS/RCS message,including by automated means, from Uber and its affiliates to the number provided',
          style: TextStyle(
            color: Colors.grey
          ),
          ),
        ],
      ),
    );
  }
}


