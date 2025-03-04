import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/component/custom_button.dart';
import 'package:gym_system/core/utils/component/custom_space.dart';
import 'package:gym_system/core/utils/component/custom_text_feild.dart';
import 'package:gym_system/core/utils/logo.dart';
import 'package:gym_system/features/auth/presentation/widgets/custom_birth_day.dart';
import 'package:gym_system/features/auth/presentation/widgets/custom_phone.dart';
import 'package:radio_group_v2/widgets/view_models/radio_group_controller.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/fonts.dart';
import '../../widgets/custom_gender.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final ValueNotifier<DateTime> birthDayNotifier =
      ValueNotifier(DateTime.now());
  RadioGroupController gender = RadioGroupController();

  @override
  void dispose() {
    name.dispose();
    password.dispose();
    email.dispose();
    phone.dispose();
    birthDayNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const CustomSpaceHeight(height: .1),
                const Logo(),
                CustomPhone(phone: phone),
                const CustomSpaceHeight(height: .005),
                CustomTextField(controller: name, hint: AppString.name),
                const CustomSpaceHeight(height: .025),
                CustomTextField(controller: email, hint: AppString.email),
                const CustomSpaceHeight(height: .025),
                CustomTextField(
                  controller: password,
                  hint: AppString.password,
                  isPassword: true,
                ),
                const CustomSpaceHeight(height: .025),
                CustomBirthDay(birthDayNotifier: birthDayNotifier),
                const CustomSpaceHeight(height: .02),
                CustomGender(gender: gender),
                const CustomSpaceHeight(height: .03),
                const CustomButton(text: AppString.signUp),
                const CustomSpaceHeight(height: .025),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRoute.signInScreen);
                  },
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: AppString.doHaveAnAccount,
                      style: AppFonts.textRegular16(context)
                          .copyWith(color: AppColor.textGrayColor),
                    ),
                    TextSpan(
                      text: AppString.signIn,
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
