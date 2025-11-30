import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final String hintText;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;

  const CustomDropdown({
    super.key,
    this.value,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.validator,
    this.prefixIcon,
    this.textStyle,
    this.hintStyle,
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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: DropdownButtonFormField<String>(
            value: value,
            hint: Text(
              hintText,
              style: hintStyle ?? TextStyle(color: Colors.grey),
            ),
            icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
            iconSize: 24.sp,
            elevation: 2,
            style: textStyle ?? TextStyle(color: Colors.black, fontSize: 14.sp),
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              prefixIcon: prefixIcon,
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: 12.sp,
              ),
              contentPadding: EdgeInsets.zero,
            ),
            dropdownColor: Colors.white,
            validator: validator,
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}