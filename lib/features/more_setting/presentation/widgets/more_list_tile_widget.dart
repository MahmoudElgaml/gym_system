import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/fonts.dart';

class MoreItemListTile extends StatelessWidget {
  const MoreItemListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.listTileBackgroundColor,
        ),
        child: Row(
          children: [
            ClipOval(
              child: Container(
                color: AppColor.primaryColor,
                padding: const EdgeInsets.all(10),
                child: Icon(
                  icon,
                  color: AppColor.blackColor,
                ),
              ),
            ),
            const Gap(15),
            Text(
              title,
              style: AppFonts.textBold16(context)
                  .copyWith(color: AppColor.textGrayColor),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColor.textGrayColor,
            ),
          ],
        ),
      ),
    );
  }
}
