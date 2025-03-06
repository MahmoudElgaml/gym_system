import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/fonts.dart';

class SubAdvantages extends StatelessWidget {
  const SubAdvantages({
    super.key, required this.title,
  });
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.blackColor,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              title,
              style: AppFonts.textRegular14(context).copyWith(
                  color: AppColor.textGrayColor,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColor.textGrayColor,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
