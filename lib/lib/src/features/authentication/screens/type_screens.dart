import 'package:edu_career/lib/src/constants/colors.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/preferences_screen.dart';
import 'package:edu_career/lib/src/widgets/app_logo.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:edu_career/lib/src/widgets/types_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeScreens extends StatefulWidget {
  const TypeScreens({super.key});

  @override
  State<TypeScreens> createState() => _TypeScreensState();
}

class _TypeScreensState extends State<TypeScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(text: 'EduCareer'),
              SizedBox(height: 20.0.h),
              Text(
                'What type of job you’re looking for?',
                style: TextStyle(
                  fontSize: 28.0.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlackColour,
                ),
              ),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Management',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Marketing',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Administrative  ',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Developer',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Designer',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 15.0.h),
              TypesCard(
                  text: 'Other',
                  icon: Icons.design_services,
                  isChecked: false,
                  onChanged: (value) {}),
              SizedBox(height: 35.0.h),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreferencesScreen()));
                  },
                  text: "Register",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
