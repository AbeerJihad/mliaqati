import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.fontWeight,
      required this.color,
      required this.font,
      required this.text,
      this.maxLine,
      required this.size})
      : super(key: key);
  final String font;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final String text;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: TextStyle(
          fontFamily: font,
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          height: 1.5),
    );
  }
}
