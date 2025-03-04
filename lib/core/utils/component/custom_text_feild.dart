import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/fonts.dart';

class CustomTextField extends StatefulWidget {
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hint;

  const CustomTextField({
    super.key,
    this.isPassword = false,
    this.validator,
    required this.controller,
    required this.hint,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText && widget.isPassword,
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.backGroundColor,
        hintText: widget.hint,
        hintStyle: AppFonts.textSemiBold18(context)
            .copyWith(color: Colors.grey, fontSize: 16),
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
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  _obscureText = !_obscureText;
                  setState(() {});
                },
                icon: Icon(_obscureText
                    ? CupertinoIcons.eye_slash
                    : CupertinoIcons.eye),
              )
            : null,
      ),
    );
  }
}
