import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/routs/routs.dart';
import 'package:flutter_task/utils/app_colors/app_colors.dart';
import 'package:flutter_task/utils/app_images_and_icons_url/app_icons_url.dart';
import 'package:flutter_task/widgets/Custom_text_button.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_const/app_const.dart';
import '../../../widgets/Custom_button.dart';
import '../../../widgets/Custom_text.dart';
import '../../../widgets/Custom_textField.dart';

class TeacherLogin extends StatelessWidget {
  TeacherLogin({super.key});

  final _formkey = GlobalKey<FormState>();
  final isPasswordVisible = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            /// ---------- Bottom Half Circle ----------
            Positioned(
              bottom: -500,
              left: -110,
              right: -110,
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.gray100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                    topRight: Radius.circular(300),
                  ),
                ),
              ),
            ),

            /// ---------- Scrollable Content ----------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),

                    /// EMAIL
                    CustomText(text: "Email"),
                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Email";
                        }
                        if (!AppString.emailRegexp.hasMatch(value)) {
                          return "Invalid Email";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 24.h),

                    /// PASSWORD
                    CustomText(text: "Password"),
                    SizedBox(height: 8.h),

                    Obx(
                          () => Customtextfield(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () => isPasswordVisible.value =
                          !isPasswordVisible.value,
                        ),
                        controller: passwordController,
                        hintText: "Password",
                        obscureText: !isPasswordVisible.value,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Password";
                          }
                          if (!AppString.passRegexp.hasMatch(value)) {
                            return "Invalid password";
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(height: 8.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextButton(
                        onPressed: () {},
                        buttonName: "Forgot password?",
                        color: AppColors.blue100,
                      ),
                    ),

                    SizedBox(height: 16.h),

                    /// SIGN IN BUTTON
                    CustomButton(
                      text: "Sign in",
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Get.toNamed(Routes.personalizingpage);
                        }
                      },
                    ),

                    SizedBox(height: 16.h),

                    /// GOOGLE LOGIN
                    CustomButton(
                      text: "",
                      backgroundColor: Colors.white,
                      borderColor: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppIcons.googleicon,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 10),
                          CustomText(text: "Login with Google"),
                        ],
                      ),
                      onPressed: () {},
                    ),

                    SizedBox(height: 16.h),

                    /// CREATE ACCOUNT
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: "New to Learnova?", fontSize: 14.sp),
                        CustomTextButton(
                          buttonName: "Create an Account",
                          onPressed: () {
                            Get.toNamed(Routes.singuppage);
                          },
                          color: AppColors.blue100,
                        ),
                      ],
                    ),

                    SizedBox(height: 191.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
