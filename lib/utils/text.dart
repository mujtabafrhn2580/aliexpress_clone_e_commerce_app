import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });
  const AppText.iconLabeText({
    super.key,
    required this.text,
    this.textAlign,
    this.maxLines,
    this.overflow,
  })  : fontSize = 12,
        color = Colors.black,
        fontWeight = FontWeight.normal;

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: false, // No padding to top ascent
        applyHeightToLastDescent: false, // No padding to bottom descent
      ),
      textAlign: textAlign,
      style: GoogleFonts.roboto(
        height: 1,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
