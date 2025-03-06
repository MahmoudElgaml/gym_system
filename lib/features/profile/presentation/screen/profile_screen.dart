import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_images.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/fonts.dart';
import '../widgets/custom_title_and_sub_title_of_profile.dart';
import '../widgets/section_current_membership.dart';
import '../widgets/section_of_advantages.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSpaceHeight(height: .02),
              Center(
                child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(Assets.avatarMostafa)),
              ),
              CustomSpaceHeight(height: .02),
              CustomTitleAndSubTitleOfProfile(
                title: AppString.name,
                subTitle: 'Mostafa Esmail Elshrbeeny',
              ),
              CustomSpaceHeight(height: .01),
              CustomTitleAndSubTitleOfProfile(
                title: AppString.phone,
                subTitle: '01101340325',
              ),
              CustomSpaceHeight(height: .01),
              CustomTitleAndSubTitleOfProfile(
                title: AppString.id,
                subTitle: '12212186',
              ),
              CustomSpaceHeight(height: .02),
              SectionCurrentMembership(),
              CustomSpaceHeight(height: .02),
              SectionOfAdvantages(),
              CustomSpaceHeight(height: .02),
            ],
          ),
        ),
      ),
    );
  }
}
