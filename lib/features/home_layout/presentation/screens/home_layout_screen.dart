import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/features/home_layout/manger/cubit/home_layout_cubit.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
          return state.getWidget();
        },
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: AppColor.blackColor,
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(
          () {
            selectedIndex = index;
            context.read<HomeLayoutCubit>().changeScreen(index);
          },
        ),
        items: [
          FlashyTabBarItem(
            activeColor: AppColor.primaryColor,
            inactiveColor: AppColor.whiteColor,
            icon: const Icon(
              Icons.home,
              color: AppColor.primaryColor,
            ),
            title: const Text(
              AppString.home,
            ),
          ),
          FlashyTabBarItem(
            activeColor: AppColor.primaryColor,
            inactiveColor: AppColor.whiteColor,
            icon: const Icon(Icons.person_pin),
            title: const Text(AppString.profile),
          ),
          FlashyTabBarItem(
            activeColor: AppColor.primaryColor,
            inactiveColor: AppColor.whiteColor,
            icon: const Icon(Icons.qr_code),
            title: const Text(AppString.scan),
          ),
          FlashyTabBarItem(
            activeColor: AppColor.primaryColor,
            inactiveColor: AppColor.whiteColor,
            icon: const Icon(Icons.more_horiz),
            title: const Text(AppString.more),
          ),
        ],
      ),
    );
  }
}
