import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_color.dart';
import 'app_images.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 200,
        child: SvgPicture.asset(
          Assets.logo,
          colorFilter: const ColorFilter.mode(
              AppColor.primaryColor, BlendMode.srcIn),
        ));
  }
}