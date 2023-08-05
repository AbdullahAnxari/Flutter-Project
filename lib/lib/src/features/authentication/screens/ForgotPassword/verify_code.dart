import 'package:edu_career/lib/src/features/authentication/screens/ForgotPassword/reset_password.dart';
import 'package:edu_career/lib/src/widgets/app_logo.dart';
import 'package:edu_career/lib/src/widgets/custom_text_field.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class ForgetCode extends StatefulWidget {
  const ForgetCode({super.key});

  @override
  State<ForgetCode> createState() => _ForgetCodeState();
}

class _ForgetCodeState extends State<ForgetCode> {
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
                    'Verify Code',
                    style: TextStyle(
                      fontSize: 25.0.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlackColour,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 35.0.h),
                  Text(
                    'Enter your verification code from your email or phone number that we’ve sent',
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      color: kBlackColour,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 86.0.h),
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: kBlueColour,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(height: 120.0.h),
                  SizedBox(
                      width: double.infinity,
                      child: CustomElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ResetCode()));
                          },
                          text: 'Send Code')),
                ],
              )),
        ),
      ),
    );
  }
}
