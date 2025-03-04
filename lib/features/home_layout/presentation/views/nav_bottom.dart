import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_string.dart';
import '../manager/home_layout_cubit.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int selectedIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      option: DotBarOptions(),
      backgroundColor: AppColor.secondaryColor,
      items: [
        BottomBarItem(
          icon: const Icon(Icons.account_circle_outlined,
              color: AppColor.whiteColor),
          title: const Text(AppString.profile),
          selectedColor: AppColor.whiteColor,
        ),
        BottomBarItem(
          icon: const Icon(Icons.home, color: AppColor.whiteColor),
          title: const Text(AppString.profile),
          selectedColor: AppColor.whiteColor,
        ),
      ],
      hasNotch: true,
      currentIndex: selectedIndex,
      onTap: (index) {
        context.read<HomeLayoutCubit>().changePage(index);
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
