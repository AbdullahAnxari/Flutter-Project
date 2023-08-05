import 'package:edu_career/lib/src/features/authentication/screens/Login/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../../../widgets/elevated_button.dart';
import '../../type_screens.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Name',
            hintText: 'Enter your name',
            keyboardType: TextInputType.text,
            onChanged: (value) {},
            icon: Icons.person,
            obscureValue: false,
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'email',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            icon: Icons.email,
            obscureValue: false,
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Number',
            hintText: 'Enter your phone',
            keyboardType: TextInputType.phone,
            onChanged: (value) {},
            icon: Icons.phone,
            obscureValue: false,
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Password',
            hintText: 'Enter your password',
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {},
            icon: Icons.fingerprint,
            obscureValue: true,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TypeScreens()));
              },
              text: 'Register',
            ),
          ),
          SizedBox(height: 10.h),
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
          SizedBox(height: 15.h),
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
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Have an account? ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          // Center(
          //   child: RichText(
          //     text: TextSpan(
          //       text: 'Have an account? ',
          //       style: const TextStyle(fontSize: 14, color: Colors.grey),
          //       children: [
          //         TextSpan(
          //           text: 'Sign in',
          //           style: const TextStyle(
          //             fontSize: 14,
          //             color: Colors.blue,
          //             decoration: TextDecoration.underline,
          //           ),
          //           recognizer: TapGestureRecognizer()
          //             ..onTap = () {
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) => const LoginScreen()));
          //             },
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
