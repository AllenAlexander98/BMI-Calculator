import 'package:flutter/material.dart';
import '../constants.dart';

class GenderBox extends StatelessWidget {
  final IconData genderIcon;
  final String label;

  GenderBox({required this.genderIcon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
