import 'package:flutter/material.dart';
import 'package:livraria/global.dart';

class SimpleText extends StatelessWidget {
  final Color? fontColor;
  final double? fontSize;
  final String text;
  final FontWeight? fontWeight;
  const SimpleText(
    this.text, {
    super.key,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor ?? Global.themeColors.beige,
        fontSize: setFontSize(fontSize ?? 16),
        fontFamily: 'Jost',
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}

class HighlightText extends StatelessWidget {
  final Color? fontColor;
  final double? fontSize;
  final String text;
  final FontWeight? fontWeight;
  const HighlightText(
    this.text, {
    super.key,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor ?? Global.themeColors.beige,
        fontSize: setFontSize(fontSize ?? 22),
        fontFamily: 'Jost',
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}