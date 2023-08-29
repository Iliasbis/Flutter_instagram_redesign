import 'package:flutter/material.dart';

class StroyCircle extends StatelessWidget {
  final String imagePath;
  const StroyCircle({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 2),
        image: DecorationImage(
          image: AssetImage(
imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
    
  }
}
