import 'package:edu_career/lib/src/features/authentication/screens/type_screens.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/app_logo.dart';
import '../../../../widgets/custom_text_field.dart';
import 'Widgets/registeration_form.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  double PagePadding = 30.0.w;
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64.0.h),
                const AppLogo(text: 'EduCareer'),
                SizedBox(height: 24.0.h),
                Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0.h),
                Text(
                  'Let’s Register. Apply to jobs!',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0.h),
                const RegistrationForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
