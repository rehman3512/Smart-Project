import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight? fontWeight;
  const TextWidget({super.key,required this.text,required this.size,
    required this.color,required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.glory(fontSize: size,
        color: color,fontWeight: fontWeight),);
  }
}
