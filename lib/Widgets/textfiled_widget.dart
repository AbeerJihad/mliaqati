import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget(
      {Key? key,
      required this.hintText,
      required this.inputType,
      required this.controller,
      this.obscureText = false,
      this.onTap,
      this.maxLength = 1000,
      this.focusNode,
      this.onChange,
      this.maxLines = 1,
      this.textAlign = TextAlign.start,
      this.enable = true,
      this.prefixIcons,
      this.error})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String hintText;
  final String? error;
  final bool obscureText;
  final int maxLines;
  final int maxLength;
  final FocusNode? focusNode;
  final Function(String value)? onChange;
  final TextAlign textAlign;
  final bool enable;
  final Function()? onTap;
  final Icon? prefixIcons;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      maxLength: maxLength,
      maxLines: maxLines,
      focusNode: focusNode,
      textAlign: textAlign,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          prefixIcon: prefixIcons,
          enabled: enable,
          counterText: '',
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black38),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          //hintStyle: TextStyle(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          errorText: error,
          //Text Error if it null the error false else error true
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          filled: true,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          fillColor: Colors.black12),
      onChanged: onChange,
    );
  }
}
