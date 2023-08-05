import 'package:edu_career/lib/src/features/authentication/screens/Login/Widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/app_logo.dart';
import '../Registration/Widgets/registeration_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 34.0.h),
                const BackButton(),
                SizedBox(height: 12.0.h),
                const AppLogo(text: 'EduCareer'),
                SizedBox(height: 8.0.h),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0.h),
                Text(
                  'Let’s log in. Apply to jobs!',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 31.0.h),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(height: 64.0.h),
// const AppLogo(text: 'EduCareer'),
// SizedBox(height: 24.0.h),
// Text(
// 'Registration',
// style: TextStyle(
// fontSize: 25.0.sp,
// fontWeight: FontWeight.w400,
// color: kBlackColour,
// ),
// textAlign: TextAlign.left,
// ),
// SizedBox(height: 12.0.h),
// Text(
// 'Let’s Register. Apply to jobs!',
// style: TextStyle(
// fontSize: 15.0.sp,
// color: kBlackColour,
// ),
// textAlign: TextAlign.left,
// ),
// SizedBox(height: 12.0.h),
// // const LoginScreen(),
// ],
// ),
