import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';
import 'package:gym_system/core/utils/fonts.dart';

import 'sub_advantages.dart';

class SectionOfAdvantages extends StatelessWidget {
  const SectionOfAdvantages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.advantages,
          style: AppFonts.textSemiBold16(context)
              .copyWith(color: AppColor.primaryColor),
        ),
        const CustomSpaceHeight(height: .01),
        const Row(
          children: [
            Expanded(
              child: SubAdvantages(
                title: AppString.invitations,
              ),
            ),
            CustomSpaceWidth(width: .01),
            Expanded(
              child: SubAdvantages(title: AppString.inBody),
            ),
          ],
        ),
        const CustomSpaceHeight(height: .01),
        const SubAdvantages(title: AppString.attendanceDates)
      ],
    );
  }
}
