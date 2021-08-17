import 'package:flutter/material.dart';

Container signInButton(bool isSocial, String image, VoidCallback onPressed,
    String label, Color textColor, Color color) {
  return Container(
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
                child: isSocial ? Image.asset(image) : SizedBox(width: 30)),
            SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 17,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
