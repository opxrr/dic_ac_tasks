import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintName;
  final bool isPassword;
  final TextInputType keyboardType;
  final ImageIcon labelIcon;

  const CustomTextFormField(
      {super.key, required this.hintName,
      required this.isPassword,
      required this.keyboardType,
      required this.labelIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: labelIcon,
        fillColor: const Color.fromRGBO(196, 196, 196, 0.2),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintText: hintName,
      ),
      keyboardType: keyboardType,
      style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
    );
  }
}
