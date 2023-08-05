import 'package:edu_career/lib/src/features/authentication/screens/Categories/Widgets/CategoryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/colors.dart';
import '../../../../widgets/roles_container.dart';

class TrendingCategory extends StatelessWidget {
  const TrendingCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Trending',
              style: TextStyle(
                fontSize: 22.0.sp,
                fontWeight: FontWeight.w500,
                color: kBlackColour,
              ),
            ),
            const Text(
              'See all',
              style: TextStyle(
                color: kGreyColour,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CategoryCard(
                    imagePath: 'assets/images/category_images/Rectangle5.png',
                    title: 'Software Engineer'),
                SizedBox(width: 20.0.w),
                const CategoryCard(
                    imagePath: 'assets/images/category_images/Rectangle6.png',
                    title: 'Software Engineer'),
              ],
            ),
            SizedBox(height: 10.0.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CategoryCard(
                    imagePath: 'assets/images/category_images/Rectangle7.png',
                    title: 'Software Engineer'),
                SizedBox(width: 20.0.w),
                const CategoryCard(
                    imagePath: 'assets/images/category_images/Rectangle4.png',
                    title: 'Software Engineer'),
              ],
            ),
            SizedBox(height: 10.0.h),
          ],
        ),
      ],
    );
  }
}
