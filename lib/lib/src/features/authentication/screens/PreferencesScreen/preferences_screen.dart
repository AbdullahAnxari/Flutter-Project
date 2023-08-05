import 'package:edu_career/lib/src/features/authentication/screens/Categories/category.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/job_role_widget.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/job_type.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/location_widget.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:edu_career/lib/src/widgets/roles_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(
                      onPressed: () {},
                      color: kBlackColour,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      'Job Preferences',
                      style: TextStyle(
                        fontSize: 22.0.sp,
                        fontWeight: FontWeight.w500,
                        color: kBlackColour,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                const JobRoleWidget(),
                const JobTypeWidget(),
                const LocationWidget(),
                const SizedBox(height: 25),
                SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryScreen()));
                        },
                        text: 'Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
