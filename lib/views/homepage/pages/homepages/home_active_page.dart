import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/views/homepage/pages/homepages/followingpage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/newpage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/trendingpage.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_images_and_icons_url/app_icons_url.dart';
import '../../../../widgets/Custom_appBar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeActivePage extends StatelessWidget {
  HomeActivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r),
          child: Column(
            children: [
              CustomAppBar(
                automaticallyImplyLeading: false,
                title: "Learn Through Watching Reels",
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.search,
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              Container(
                height: 40.h,
                width: double.maxFinite,
                child: TabBar(
                  labelColor: AppColors.blue100,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: AppColors.blue100,
                  tabs: const [
                    Tab(text: "Trending"),
                    Tab(text: "New"),
                    Tab(text: "Following"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [Trendingpage(), Newpage(), Followingpage()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
