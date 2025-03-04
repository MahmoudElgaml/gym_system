import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_string.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/fonts.dart';

class CustomPhone extends StatelessWidget {
  const CustomPhone({super.key, required this.phone});
  final TextEditingController phone  ;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.backGroundColor,
        hintStyle: AppFonts.textSemiBold18(context)
            .copyWith(color: Colors.grey, fontSize: 16),
        hintText: AppString.phone,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xffD9D9D9))),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.red)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xffD9D9D9))),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xffD9D9D9))),
      ),
      initialCountryCode: 'EG',
      controller: phone,
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}
