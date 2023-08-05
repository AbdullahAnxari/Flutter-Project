import 'package:edu_career/lib/src/features/authentication/screens/ForgotPassword/verify_code.dart';
import 'package:edu_career/lib/src/widgets/app_logo.dart';
import 'package:edu_career/lib/src/widgets/custom_text_field.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 35.0.h),
                Text(
                  'Enter your email or phone number, we will send you verification code',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 86.0.h),
                Container(
                  width: 281,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(
                        0xFFF2F6FD), // Set your desired background color here
                  ),
                  child: const Center(
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 48.0.h),
                CustomTextField(
                  controller: _controller,
                  labelText: 'E-mail',
                  hintText: 'E-mail',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.email_sharp,
                  obscureValue: false,
                ),
                SizedBox(height: 120.0.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetCode()));
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
