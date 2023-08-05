import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/roles_container.dart';

class JobRoleWidget extends StatelessWidget {
  const JobRoleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Job Roles',
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
        const SizedBox(height: 15),
        Column(
          children: [
            Row(
              children: [
                JobRoleContainer(text: 'Product Designer'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Developer'),
              ],
            ),
            SizedBox(height: 10.0.h),
            Row(
              children: [
                JobRoleContainer(text: 'UX Designer'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Graphics Designer'),
              ],
            ),
            SizedBox(height: 10.0.h),
            Row(
              children: [
                JobRoleContainer(text: 'Full-Stack Developer'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Developer'),
              ],
            ),
            SizedBox(height: 10.0.h),
            Row(
              children: [
                JobRoleContainer(text: 'Developert Designer'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Developer'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
