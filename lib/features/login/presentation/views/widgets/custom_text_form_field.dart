import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
  });
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      style: const TextStyle(color: Colors.amber),
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.amber),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFF5FCF9),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0 * 1.5, vertical: 16.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
