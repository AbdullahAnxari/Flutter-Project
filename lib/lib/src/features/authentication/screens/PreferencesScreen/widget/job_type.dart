import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/roles_container.dart';

class JobTypeWidget extends StatelessWidget {
  const JobTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Job Type',
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
                JobRoleContainer(text: 'Any'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Part-Time'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Full-Time'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
