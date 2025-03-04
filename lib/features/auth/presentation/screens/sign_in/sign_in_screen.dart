import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_images.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Gap(60),
            SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.asset(
                  Assets.logo,
                  colorFilter: const ColorFilter.mode(
                      AppColor.primaryColor, BlendMode.srcIn),
                )),
          ],
        ),
      ),
    );
  }
}
