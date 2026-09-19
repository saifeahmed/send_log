import 'package:flutter/material.dart';

InputDecoration fieldDecoration({
  required String hint,
  required IconData icon,
  Widget? suffixIcon,
}) {
  const _green = Color(0xFF0C4A2E);

  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: Colors.grey.shade500),
    prefixIcon: Icon(icon, color: Colors.grey.shade500),
    suffixIcon: suffixIcon,
    filled: true,
    fillColor: const Color(0xFFF6F8F7),
    contentPadding: const EdgeInsets.symmetric(vertical: 18),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.green.shade50),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: _green, width: 1.5),
    ),
  );
}
