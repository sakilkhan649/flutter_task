import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/utils/app_images_and_icons_url/app_icons_url.dart';
import 'package:flutter_task/views/homepage/pages/course_page.dart';
import 'package:flutter_task/views/homepage/pages/homepages/home_active_page.dart';
import 'package:flutter_task/views/homepage/pages/profile_page.dart';
import 'package:flutter_task/views/homepage/pages/quiz_page.dart';
import 'package:flutter_task/views/homepage/pages/shorts_page.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  var currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: currentIndex.value,
          children: [
            HomeActivePage(),
            Shortspage(),
            Quizpage(),
            CoursePage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.white70, width: 1)),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex.value,
            onTap: (index) {
              currentIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(
                label: '', // label সরিয়ে দিলাম
                icon: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    SvgPicture.asset(
                      AppIcons.home,
                      width: 25.w,
                      height: 25.h,
                      colorFilter: ColorFilter.mode(
                        currentIndex.value == 0 ? Colors.blue : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),

                    /// Small Circle Indicator
                    SizedBox(height: 4), // icon এর নিচে space
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentIndex.value == 0
                            ? Colors.blue
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.video,
                      width: 25.w,
                      height: 25.h,
                      colorFilter: ColorFilter.mode(
                        currentIndex.value == 1 ? Colors.blue : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),

                    /// Small Circle Indicator
                    SizedBox(height: 4), // icon এর নিচে space
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentIndex.value == 1
                            ? Colors.blue
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.course,
                      width: 25.w,
                      height: 25.h,
                      colorFilter: ColorFilter.mode(
                        currentIndex.value == 2 ? Colors.blue : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),

                    /// Small Circle Indicator
                    SizedBox(height: 4), // icon এর নিচে space
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentIndex.value == 2
                            ? Colors.blue
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.quiz,
                      width: 25.w,
                      height: 25.h,
                      colorFilter: ColorFilter.mode(
                        currentIndex.value == 3 ? Colors.blue : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),

                    /// Small Circle Indicator
                    SizedBox(height: 4), // icon এর নিচে space
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentIndex.value == 3
                            ? Colors.blue
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.profile,
                      width: 25.w,
                      height: 25.h,
                      colorFilter: ColorFilter.mode(
                        currentIndex.value == 4 ? Colors.blue : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),

                    /// Small Circle Indicator
                    SizedBox(height: 4), // icon এর নিচে space
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentIndex.value == 4
                            ? Colors.blue
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
