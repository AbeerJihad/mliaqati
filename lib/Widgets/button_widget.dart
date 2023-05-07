import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.child,
      this.width = double.infinity,
      required this.onPressed,
      required this.height,
        this.elevation=0,
      required this.color})
      : super(key: key);
  final Widget child;
  final double width;
  final double height;
  final Color color;

  final double elevation;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          primary: color,
          elevation: elevation,

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
