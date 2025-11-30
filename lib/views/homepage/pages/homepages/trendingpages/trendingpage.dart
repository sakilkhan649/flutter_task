import 'package:flutter/material.dart';
import 'package:flutter_task/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/allpage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/chainapage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/chemistrypage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/englishpage.dart';
import 'package:flutter_task/views/homepage/pages/homepages/trendingpages/mathspage.dart';

class Trendingpage extends StatelessWidget {
  Trendingpage({super.key});

  final RxInt selectedIndex = 0.obs;

  final List<String> tabs = ["All", "中文", "English", "Maths", "Chemistry"];

  final List<Widget> pages = [
    Allpage(),
    Chainapage(),
    Englishpage(),
    Mathspage(),
    Chemistrypage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 22.sp),
          // Tab Bar
          Container(
            height: 45.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 5.r),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => GestureDetector(
                    onTap: () {
                      selectedIndex.value = index;
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.r,
                        vertical: 2.r,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex.value == index
                            ? AppColors.blue500
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.r,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15.r, 10.r, 15.r, 10.r),
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: selectedIndex.value == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: selectedIndex.value == index
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Page Content
          Expanded(child: Obx(() => pages[selectedIndex.value])),
        ],
      ),
    );
  }
}
