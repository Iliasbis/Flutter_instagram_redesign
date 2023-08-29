// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScaleSize.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight font;
  final TextAlign textAlign;
  const SmallText({super.key, 
    required this.text,
    this.size = 18,
    this.color = Colors.black,
    this.textAlign=TextAlign.center,
    this.font = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lateef(
        fontSize: size,
        color: color,
        fontWeight: font,
      ),
      textAlign: textAlign,
      textScaleFactor: ScaleSize.textScaleFactor(context),
    );
  }
}
