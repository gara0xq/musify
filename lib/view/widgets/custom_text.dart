import 'package:flutter/material.dart';
import 'package:musify/constant/colors.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String text;
  Color color;
  Alignment alignment;
  double fontSize;
  FontWeight fontWeight;
  CustomText({
    super.key,
    required this.text,
    this.color = white,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
