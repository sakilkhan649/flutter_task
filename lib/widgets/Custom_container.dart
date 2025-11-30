import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_images_and_icons_url/app_images_url.dart';
import 'Custom_text.dart';

class LearnovaHeader extends StatelessWidget {
  const LearnovaHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Container
        Container(
          width: double.infinity,
          height: 233.h,
         // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.center,
              colors: [AppColors.blue300, AppColors.blue300],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Container(
             // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.logoicon, height: 70.h, width: 80.w),
                  CustomText(
                    text: "Learnova",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        // Vector Icon -
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            AppImages.vectoricon,
            height: 50,
            width: 80,
            fit: BoxFit.cover,
            color: Colors.blue[900],
          ),
        ),
        Positioned(
          right: -15,
          top: 48,
          child: Container(
            height: 148,
            width: 148,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white12, width: 1),
            ),
          ),
        ),
        Positioned(
          right: 8,
          top: 39,
          child: Container(
            height: 148,
            width: 148,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white12, width: 1),
            ),
          ),
        ),

        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            AppImages.vectoricon,
            height: 98,
            width: 254,
            fit: BoxFit.cover,
            color: Colors.blue[900],
          ),
        ),
        Positioned(
          left: -30,
          top: 98,
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white12, width: 1),
            ),
          ),
        ),
        Positioned(
          left: -50,
          top: 89,
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white12, width: 1),
            ),
          ),
        ),
        Positioned(
          left: 110,
          top: 140,
          child: Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [AppColors.blue100, AppColors.blue200],
              ),
            ),
          ),
        ),
        Positioned(
          left: 180,
          top: 160,
          child: Container(
            height: 20,
            width: 20,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [AppColors.blue100, AppColors.blue200],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
