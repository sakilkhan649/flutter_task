import 'package:flutter/material.dart';
import 'package:flutter_task/views/auth/login/student_login.dart';
import 'package:flutter_task/views/auth/login/teacher_login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../widgets/Custom_appBar.dart';
import '../../../widgets/Custom_container.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            LearnovaHeader(),
            CustomAppBar(
              title: "Log In",
              toolbarHeight: 50,
              automaticallyImplyLeading: false,
            ),

            SizedBox(height: 16.h),

            Container(
              height: 40.h,
              width: 222.w,
              child: TabBar(
                labelColor: AppColors.blue100,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AppColors.blue100,
                tabs: const [
                  Tab(text: "Student"),
                  Tab(text: "Teacher"),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(children: [StudentLogin(), TeacherLogin()]),
            ),
          ],
        ),
      ),
    );
  }
}
