import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';
import 'package:gym_system/core/utils/fonts.dart';

import 'data_of_membership.dart';

class SectionCurrentMembership extends StatelessWidget {
  const SectionCurrentMembership({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                AppString.currentMembership,
                style: AppFonts.textSemiBold16(context)
                    .copyWith(color: AppColor.primaryColor),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                AppString.viewAllMemberships,
                style: AppFonts.textRegular12(context)
                    .copyWith(color: AppColor.primaryColor, fontSize: 12),
              ),
            ),
          ],
        ),
        const CustomSpaceHeight(height: .01),
        Container(
          decoration: const BoxDecoration(
              color: AppColor.blackColor,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "12 Month",
                      style: AppFonts.textBold16(context)
                          .copyWith(color: AppColor.whiteColor),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.redColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppString.expired,
                            style: AppFonts.textBold16(context)
                                .copyWith(color: AppColor.whiteColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const DataOfMembership(
                  title: AppString.startDate,
                  subTitle: "12/12/2024",
                ),
                const CustomSpaceHeight(height: .005),
                const DataOfMembership(
                  title: AppString.expiryDate,
                  subTitle: "12/12/2025",
                ),
                const CustomSpaceHeight(height: .005),
                const DataOfMembership(
                  title: AppString.attendance,
                  subTitle: "125",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
