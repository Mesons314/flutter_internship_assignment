
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget{
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? text;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  const CustomText({
    super.key,
    required this.text,
    this.fontWeight,
    this.maxLines,
    this.color,
    this.fontSize,
    this.overflow,
    this.textAlign
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight?? FontWeight.w400,
        color: color ?? Colors.black,
        overflow: overflow,

      ),

    );
  }

}