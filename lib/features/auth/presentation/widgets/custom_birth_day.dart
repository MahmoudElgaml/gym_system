import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:gym_system/core/utils/fonts.dart';

class CustomBirthDay extends StatefulWidget {
  const CustomBirthDay({super.key, required this.birthDayNotifier});

  final ValueNotifier<DateTime> birthDayNotifier;

  @override
  State<CustomBirthDay> createState() => _CustomBirthDayState();
}

class _CustomBirthDayState extends State<CustomBirthDay> {
  void openDatePickerWithButtonStyle() {
    if (!mounted) return;

    final picker = BottomPicker.date(
      backgroundColor: AppColor.blackColor,
      pickerTitle: const Text(
        AppString.setYourBirthday,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: AppColor.whiteColor,
        ),
      ),
      dateOrder: DatePickerDateOrder.dmy,
      initialDateTime: widget.birthDayNotifier.value,
      maxDateTime: DateTime.now(),
      minDateTime: DateTime(1980),
      pickerTextStyle: const TextStyle(
        color: AppColor.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      onChange: (index) {
        if (mounted) {
          widget.birthDayNotifier.value = index;
        }
      },
      onSubmit: (index) {
        if (mounted) {
          widget.birthDayNotifier.value = index;
        }
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
      buttonStyle: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue[200]!,
        ),
      ),
      buttonWidth: 200,
      buttonContent: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.selectDate,
              style: TextStyle(
                  color: AppColor.blackColor, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColor.blackColor,
              size: 15,
            ),
          ],
        ),
      ),
    );

    if (mounted) {
      picker.show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openDatePickerWithButtonStyle,
      child: Container(
        width: double.maxFinite,
        height: 55,
        decoration: BoxDecoration(
            color: AppColor.backGroundColor,
            border: Border.all(color: const Color(0xffD9D9D9)),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: ValueListenableBuilder<DateTime>(
                valueListenable: widget.birthDayNotifier,
                builder: (context, value, child) {
                  return Text(
                    value.toLocal().toString().split(' ')[0],
                    style: AppFonts.textSemiBold18(context)
                        .copyWith(color: Colors.grey, fontSize: 16),
                  );
                },
              )),
        ),
      ),
    );
  }
}
