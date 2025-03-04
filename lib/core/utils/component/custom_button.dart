import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                const WidgetStatePropertyAll(AppColor.primaryColor),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        onPressed: onPressed,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .06,
          width: double.maxFinite,
          child: Center(
              child: Text(
            text,
            style: AppFonts.textBold16(context)
                .copyWith(color: AppColor.blackColor),
          )),
        ));
  }
}
