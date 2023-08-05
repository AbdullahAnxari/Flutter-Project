import 'package:flutter/material.dart';
import 'package:edu_career/lib/src/constants/colors.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  const SkipButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor = kGreyColour,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Action to perform when the skip button is pressed
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
