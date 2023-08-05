import 'package:flutter/material.dart';
import 'package:edu_career/lib/src/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double elevation;

  const CustomElevatedButton({
    required this.onPressed,
    required this.text,
    this.buttonColor = kBlueColour,
    this.textColor = Colors.white,
    this.elevation = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
