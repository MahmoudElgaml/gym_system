import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CapacitySection extends StatelessWidget {
  const CapacitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff2a2a2a),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: CircularPercentIndicator(
              radius: 30.0,
              lineWidth: 5.0,
              percent: .5,
              center: Text(
                "50%",
                style: AppFonts.textMedium16(context).copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
              progressColor: Colors.green,
            ),
          ),
          const Gap(15
          ),
          Text(
            AppString.capacity,
            style: AppFonts.textMedium16(context)
                .copyWith(color: AppColor.primaryColor),
          ),
        ],
      ),
    );
  }
}
