import 'package:edu_career/lib/src/features/authentication/screens/ForgotPassword/confirmation_screen.dart';
import 'package:edu_career/lib/src/features/authentication/screens/ForgotPassword/verify_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/app_logo.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/elevated_button.dart';

class ResetCode extends StatefulWidget {
  const ResetCode({super.key});

  @override
  State<ResetCode> createState() => _ResetCodeState();
}

class _ResetCodeState extends State<ResetCode> {
  final TextEditingController _controller = TextEditingController();
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
                Align(alignment: Alignment.topLeft, child: BackButton()),
                SizedBox(height: 61.0.h),
                AppLogo(text: 'EduCareer'),
                SizedBox(height: 43.0.h),
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 35.0.h),
                Text(
                  'Enter your new password and confirm the new password to reset password',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 86.0.h),
                CustomTextField(
                  controller: _controller,
                  labelText: 'New Password',
                  hintText: 'New Password',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.fingerprint,
                  obscureValue: false,
                ),
                SizedBox(height: 16.0.h),
                CustomTextField(
                  controller: _controller,
                  labelText: 'Confirm New Password',
                  hintText: 'Confirm New Password',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.fingerprint,
                  obscureValue: false,
                ),
                SizedBox(height: 128.0.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmationScreen()));
                      },
                      text: 'Send Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
