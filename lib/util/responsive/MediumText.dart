// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScaleSize.dart';

class MediumText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight font;
  final TextAlign textAlign;
  const MediumText({super.key, 
    required this.text,
    this.size = 26,
    this.color = Colors.black,
    this.font = FontWeight.normal,
    this.textAlign = TextAlign.center,
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
