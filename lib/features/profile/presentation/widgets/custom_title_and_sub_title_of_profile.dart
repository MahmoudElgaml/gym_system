
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/fonts.dart';

import '../../../../core/utils/app_color.dart';

class CustomTitleAndSubTitleOfProfile extends StatelessWidget {
  const CustomTitleAndSubTitleOfProfile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.textSemiBold18(context)
              .copyWith(color: AppColor.primaryColor),
        ),
        Text(
          subTitle,
          style: AppFonts.textSemiBold16(context)
              .copyWith(color: AppColor.whiteColor),
        )
      ],
    );
  }
}

