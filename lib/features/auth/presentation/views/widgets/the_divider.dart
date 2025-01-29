import 'package:flutter/material.dart';
import 'package:uber_clone/core/widgets/custom_divider.dart';

class TheDivider extends StatelessWidget {
  const TheDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 7,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomDivider(),
        ),
        Text('or'),
        Expanded(
          child: CustomDivider(),
        ),
      ],
    );
  }
}
