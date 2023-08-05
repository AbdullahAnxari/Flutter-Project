import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color outlineColor;
  final Color textColor;
  final double outlineWidth;
  final IconData? icon;
  final String? subtitle;

  const CustomOutlinedButton({
    required this.onPressed,
    required this.text,
    this.outlineColor = Colors.black,
    this.textColor = Colors.black,
    this.outlineWidth = 2,
    this.icon,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              foregroundColor: outlineColor,
              side: BorderSide(color: outlineColor, width: outlineWidth),
              padding: const EdgeInsets.symmetric(vertical: 20)),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
