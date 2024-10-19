import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylizedText extends StatelessWidget {
  final String text;
  final double? titleSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  const StylizedText(
    this.text, 
    this.titleSize, 
    this.fontWeight,
    this.overflow,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: titleSize, fontWeight: fontWeight, overflow: overflow))
    );
  }
}