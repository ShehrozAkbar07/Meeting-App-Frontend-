
import 'package:flutter/material.dart';

import '../utils/appcolors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomTextField(
      {Key? key,
      required this.text,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      keyboardType: keyboardType,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        // fillColor: const Color(AppColors.fillColor),
        filled: true,
        prefixIcon: prefixIcon,
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.white
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
