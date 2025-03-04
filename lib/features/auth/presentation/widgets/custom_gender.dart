
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

import '../../../../core/utils/app_color.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    super.key,
    required this.gender,
  });

  final RadioGroupController gender;

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      controller: gender,
      values: const [AppString.male, AppString.female],
      indexOfDefault: 0,
      orientation: RadioGroupOrientation.horizontal,
      decoration: const RadioGroupDecoration(
        spacing: 10.0,
        labelStyle: TextStyle(
          color: AppColor.textGrayColor,
        ),
        activeColor: AppColor.primaryColor,
      ),
    );
  }
}
