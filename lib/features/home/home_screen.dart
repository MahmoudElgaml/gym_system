import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_images.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:gym_system/features/home/presentation/widgets/capacity_section.dart';
import 'package:gym_system/features/home/presentation/widgets/slider_image_section.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            fit: BoxFit.fill,
            Assets.logo,
            width: 80,
            height: 80,
            color: AppColor.primaryColor,
          ),
        ],
        title: Text(
          AppString.home,
          style: AppFonts.textMedium20(context)
              .copyWith(color: AppColor.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: AppString.welcome,
                style: AppFonts.textMedium20(context),
                children: [
                  TextSpan(
                    text: 'Mahmoud Elgaml',
                    style: AppFonts.textBold16(context)
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ),
            const Gap(15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SliderImageSection(),
                Gap(15),
                CapacitySection(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
