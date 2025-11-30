import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType textInputType;
  final InputBorder? inputBorder;
  final String? Function(String?)? validator;
  final TextStyle? inputTextStyle;

  Customtextfield({
    super.key,
    this.inputTextStyle,
    this.inputBorder,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    required this.obscureText,
    required this.textInputType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Container(
          constraints: BoxConstraints(minHeight: 54.h),
          child: TextFormField(
            style: inputTextStyle ?? TextStyle(color: Colors.black),
            cursorColor: Colors.black,
            validator: validator,
            controller: controller,
            keyboardType: textInputType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: inputBorder ?? InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: hintText,
              filled: true,
              fillColor: Colors.white,
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: suffixIcon,
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: 12.sp,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}