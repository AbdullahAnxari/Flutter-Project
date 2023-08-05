import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../OnBoardingScreen/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future startAnimation() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlueColour,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                tSplashImage,
                color: TWhiteColor,
                width: 50.w,
                height: 50.h,
              ),
              Text(
                'EduCareer',
                style: TextStyle(fontSize: 30.sp, color: kWhiteColour),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
