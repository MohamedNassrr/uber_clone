import 'package:flutter/material.dart';
import 'package:uber_clone/core/utils/assets_data.dart';

class GoogleAndEmailFormField extends StatelessWidget {
  const GoogleAndEmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image(
                          image: AssetImage(
                            AssetsData.googleIcon
                          ),
                        ),
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 25,
                          width: 25,
                          child: Icon(
                              Icons.email_rounded
                          )
                      ),
                      Text(
                        'Continue with Email',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image(
                          image: AssetImage(
                            AssetsData.facebookIcon,
                          ),
                        ),
                      ),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}