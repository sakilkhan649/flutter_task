import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/routs/routs.dart';
import 'package:get/get.dart';
import '../../controllers/dropdown_Controller.dart';
import '../../widgets/Custom_button.dart';
import '../../widgets/Custom_text.dart';
import '../../widgets/Custom_textField.dart';
import '../../utils/app_images_and_icons_url/app_icons_url.dart';

/// ------------------- UI -------------------
class Personalizingpage extends StatelessWidget {
  Personalizingpage({super.key});

  final controller = Get.put(PersonalizingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.grey,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.grey,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
          child: Container(
            padding: EdgeInsets.fromLTRB(22, 21, 22, 21),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Personalizing course", fontSize: 20),
                CustomText(text: "according to your profile", fontSize: 20),
                SizedBox(height: 24.h),

                /// Current School
                CustomText(text: "Current School"),
                SizedBox(height: 8.h),
                Customtextfield(
                  controller: controller.schoolController,
                  hintText: "Diocesan Boys' School",
                  obscureText: false,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 24.h),

                /// Elective Subject
                CustomText(text: "Elective Subject"),
                SizedBox(height: 8.h),
                Customtextfield(
                  controller: controller.subjectController,
                  hintText: "Mathematics",
                  obscureText: false,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 24.h),

                /// Current Grade
                CustomText(text: "Current Grade"),
                SizedBox(height: 8.h),
                Obx(
                  () => Customtextfield(
                    controller: controller.gradeController
                      ..text = controller.selectedGrade.value,
                    hintText: "Select Grade",
                    obscureText: false,
                    textInputType: TextInputType.name,
                    suffixIcon: IconButton(
                      onPressed: controller.toggleGradeDropdown,
                      icon: SvgPicture.asset(
                        AppIcons.dropdounicon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => controller.showGradeDropdown.value
                      ? _dropdown(
                          controller.selectedGrade.value,
                          controller.gradeList,
                          controller.selectGrade,
                        )
                      : SizedBox(),
                ),
                SizedBox(height: 24.h),

                /// Hear About Us
                CustomText(text: "How Did you Hear About Us?"),
                SizedBox(height: 8.h),
                Obx(
                  () => Customtextfield(
                    controller: controller.hearController
                      ..text = controller.selectedHear.value,
                    hintText: "Select Option",
                    obscureText: false,
                    textInputType: TextInputType.name,
                    suffixIcon: IconButton(
                      onPressed: controller.toggleHearDropdown,
                      icon: SvgPicture.asset(
                        AppIcons.dropdounicon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => controller.showHearDropdown.value
                      ? _dropdown(
                          controller.selectedHear.value,
                          controller.hearAboutList,
                          controller.selectHear,
                        )
                      : SizedBox(),
                ),

                SizedBox(height: 50.h),

                /// Get Started Button
                CustomButton(
                  text: "Get Started",
                  onPressed: () {
                    Get.toNamed(Routes.homepage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Dropdown widget
  Widget _dropdown(
    String value,
    List<String> items,
    Function(String) onChange,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            if (newValue != null) onChange(newValue);
          },
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item, style: TextStyle(fontSize: 15.sp)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
