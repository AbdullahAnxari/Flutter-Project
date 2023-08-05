import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
    required Null Function() onPressed,
    required Color color,
  });

  @override
  Widget build(BuildContext context) {
    return BackButton(
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.black,
    );
  }
}
