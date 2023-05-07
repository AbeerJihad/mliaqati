import 'package:flutter/material.dart';

class TextFiledOtpNumber extends StatelessWidget {
  const TextFiledOtpNumber({
    Key? key,
    required this.textEditingController,
    required this.focusNode,
    this.errorName,
    required this.cursorColor,
    required this.lineColor,
    required this.onChang,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String? errorName;
  final Color cursorColor;
  final Color lineColor;
  final Function(String value) onChang;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: onChang,
      minLines: 1,
      maxLength: 1,
      textAlign: TextAlign.center,
      controller: textEditingController,
      focusNode: focusNode,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
        ),
        counterText: '',
        errorText: errorName,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: lineColor),
        ),
      ),
    );
  }
}