import 'package:edu_career/lib/src/features/authentication/screens/ForgotPassword/forgot_password.dart';
import 'package:edu_career/lib/src/features/authentication/screens/Registration/RegisterationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../../../widgets/elevated_button.dart';
import '../../type_screens.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'email',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            icon: Icons.email,
            obscureValue: false,
          ),
          SizedBox(height: 16.h),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Password',
            hintText: 'Enter your password',
            keyboardType: TextInputType.text,
            onChanged: (value) {},
            icon: Icons.fingerprint,
            obscureValue: true,
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TypeScreens()));
              },
              text: 'Login',
            ),
          ),
          SizedBox(height: 40.h),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPassword()));
            },
            child: const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 40.h),
          const Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Or continue with',
                  style: TextStyle(fontSize: 14, color: kGreyColour),
                ),
              ),
              Expanded(child: Divider()),
            ],
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Handle "Continue with Google" button press
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhiteColor,
                  backgroundImage: AssetImage('assets/logos/google_logo.png'),
                ),
              ),
              const SizedBox(width: 45),
              InkWell(
                onTap: () {
                  // Handle "Continue with Google" button press
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhiteColor,
                  backgroundImage: AssetImage('assets/logos/facebook_logo.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account? ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterationScreen()));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
