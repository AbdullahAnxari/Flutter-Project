import 'package:edu_career/lib/src/features/authentication/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/app_logo.dart';
import '../../../../widgets/elevated_button.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(alignment: Alignment.topLeft, child: BackButton()),
                SizedBox(height: 61.0.h),
                AppLogo(text: 'EduCareer'),
                SizedBox(height: 43.0.h),
                Container(
                  child: Image.asset(
                    'assets/images/congratulate.png',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
                SizedBox(height: 43.0.h),
                Text(
                  'Confirmation',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 35.0.h),
                Text(
                  'Your password has been changed. Please log in with your new password.',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 128.0.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      text: 'Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
