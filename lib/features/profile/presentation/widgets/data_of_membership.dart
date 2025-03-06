import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';
import 'package:gym_system/core/utils/fonts.dart';

class DataOfMembership extends StatelessWidget {
  const DataOfMembership({
    super.key, required this.title, required this.subTitle,
  });
  final String title ;
  final String subTitle ;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Text(
            title,
            style: AppFonts.textBold16(context)
                .copyWith(color: AppColor.textGrayColor),
          ),
          const CustomSpaceWidth(width: .02),
          Text(
            subTitle,
            style: AppFonts.textBold16(context)
                .copyWith(color: AppColor.textGrayColor),
          ),
        ],
      ),
    );
  }
}
