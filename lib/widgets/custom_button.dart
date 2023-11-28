import 'package:flutter/material.dart';

import '../home_page.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xFFe87121),
          padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
