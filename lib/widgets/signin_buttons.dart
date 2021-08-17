import 'package:flutter/material.dart';

Container signInButton(
    VoidCallback onPressed, String label, Color textColor, Color color) {
  return Container(
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 17,
          color: textColor,
        ),
      ),
    ),
  );
}
