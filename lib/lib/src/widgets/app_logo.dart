import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class AppLogo extends StatelessWidget {
  final String text;
  const AppLogo({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0.sp,
        fontWeight: FontWeight.bold,
        color: kBlueColour,
      ),
      textAlign: TextAlign.left,
    );
  }
}
