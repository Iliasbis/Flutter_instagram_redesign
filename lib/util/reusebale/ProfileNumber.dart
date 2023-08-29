import 'package:flutter/material.dart';

class ProfileNumber extends StatelessWidget {
  final int number;
  final String text;
  const ProfileNumber({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
