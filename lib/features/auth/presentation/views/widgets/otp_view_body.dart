import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uber_clone/core/widgets/custom_form_field.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text('Enter the OTP-code sent to your number'),
          SizedBox(
            width: 200,
            child: CustomFormField(
              controller: otpController,
              keyboardType: TextInputType.phone,

            ),
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width* 0.24,
                  height:  MediaQuery.of(context).size.width* 0.12,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
