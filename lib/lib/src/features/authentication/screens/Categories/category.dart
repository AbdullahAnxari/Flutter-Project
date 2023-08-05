import 'package:edu_career/lib/src/features/authentication/screens/Categories/popular_category.dart';
import 'package:edu_career/lib/src/features/authentication/screens/Categories/trending_category.dart';
import 'package:edu_career/lib/src/features/authentication/screens/Companies/companies.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/job_role_widget.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/job_type.dart';
import 'package:edu_career/lib/src/features/authentication/screens/PreferencesScreen/widget/location_widget.dart';
import 'package:edu_career/lib/src/widgets/elevated_button.dart';
import 'package:edu_career/lib/src/widgets/roles_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    BackButton(
                      onPressed: () {},
                      color: kBlackColour,
                    ),
                    SizedBox(width: 40.w),
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 22.0.sp,
                        fontWeight: FontWeight.w500,
                        color: kBlackColour,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                const PopularCategory(),
                SizedBox(height: 25.h),
                TrendingCategory(),
                SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PopularCompanyScreen()));
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
