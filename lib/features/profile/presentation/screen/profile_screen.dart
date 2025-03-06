import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_images.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/fonts.dart';
import '../widgets/custom_title_and_sub_title_of_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          AppString.profile,
          style: AppFonts.textMedium20(context)
              .copyWith(color: AppColor.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSpaceHeight(height: .02),
            const Center(
              child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(Assets.avatarMostafa)),
            ),
            const CustomSpaceHeight(height: .02),
            const CustomTitleAndSubTitleOfProfile(
              title: AppString.name,
              subTitle: 'Mostafa Esmail Elshrbeeny',
            ),
            const CustomSpaceHeight(height: .01),
            const CustomTitleAndSubTitleOfProfile(
              title: AppString.phone,
              subTitle: '01101340325',
            ),
            const CustomSpaceHeight(height: .01),
            const CustomTitleAndSubTitleOfProfile(
              title: AppString.id,
              subTitle: '12212186',
            ),
            const CustomSpaceHeight(height: .02),
            Column(
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
                        style: AppFonts.textRegular12(context).copyWith(
                            color: AppColor.primaryColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
