import 'package:flutter/material.dart';
import 'Decoration.dart';

class TextInputDecoration {
  static InputDecoration getInputDecoration({
    required String labelText,
  }) {
    return InputDecoration(   
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.5,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red)),

      contentPadding: const EdgeInsets.symmetric(
          horizontal: 30, vertical: 17),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 3, color: MyDecoration.green),
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: labelText,
      labelStyle: const TextStyle(
          color: Colors.grey, fontFamily: "Poppins"),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.5,
            color: MyDecoration.green,
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}