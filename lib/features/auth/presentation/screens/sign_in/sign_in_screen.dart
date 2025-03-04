import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/config/routes/routes.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_button.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';
import 'package:gym_system/core/utils/fonts.dart';

import '../../../../../core/utils/component/custom_text_feild.dart';
import '../../../../../core/utils/logo.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const CustomSpaceHeight(height: .1),
                const Logo(),
                Text(
                  AppString.hello,
                  style: AppFonts.textSemiBold24(context)
                      .copyWith(color: AppColor.whiteColor, fontSize: 30),
                ),
                const CustomSpaceHeight(height: .01),
                Text(
                  AppString.pleaseLogIn,
                  style: AppFonts.textSemiBold24(context)
                      .copyWith(color: AppColor.whiteColor, fontSize: 20),
                ),
                const CustomSpaceHeight(height: .02),
                CustomTextField(
                  controller: email,
                  hint: AppString.email,
                ),
                const CustomSpaceHeight(height: .03),
                CustomTextField(
                  controller: password,
                  hint: AppString.password,
                  isPassword: true,
                ),
                const CustomSpaceHeight(height: .01),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppString.forgetPassword,
                      style: AppFonts.textRegular16(context)
                          .copyWith(color: AppColor.whiteColor),
                    ),
                  ),
                ),
                const CustomSpaceHeight(height: .01),
                const CustomButton(text: AppString.login),
                const CustomSpaceHeight(height: .02),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRoute.homeLayoutScreen);
                  },
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: AppString.dontHaveAnAccount,
                      style: AppFonts.textRegular16(context)
                          .copyWith(color: AppColor.textGrayColor),
                    ),
                    TextSpan(
                      text: AppString.createAccount,
                      style: AppFonts.textRegular16(context)
                          .copyWith(color: AppColor.whiteColor),
                    ),
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
