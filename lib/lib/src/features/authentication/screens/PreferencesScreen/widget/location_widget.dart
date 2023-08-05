import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/roles_container.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
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
              'Select Location',
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
                JobRoleContainer(text: 'Worldwide'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'USA'),
                SizedBox(width: 10.0.w),
                JobRoleContainer(text: 'Seattle'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
