import 'package:flutter/material.dart';
import 'package:flutter_task/views/auth/login/student_login.dart';
import 'package:flutter_task/views/auth/login/teacher_login.dart';
import 'package:get/get.dart';

import '../controllers/tabBar_Controller.dart';


class CustomTabbar extends StatelessWidget {
  CustomTabbar({super.key});

  final TabControllerX controller = Get.put(TabControllerX());

  final List<Widget> pages = [
     StudentLogin(),
     TeacherLogin(),
  ];

  final List<Map<String, dynamic>> tabs = [
    {"icon": Icons.settings, "text": "Settings"},
    {"icon": Icons.home, "text": "Home"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      // appBar: AppBar(
      //   elevation: 0,
      //   centerTitle: true,
      //   backgroundColor: Colors.deepPurple,
      //   title: const Text(
      //     "Custom Animated TabBar",
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Obx(
                () => Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabs.length, (index) {
                  bool selected = controller.selectedIndex.value == index;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () => controller.changeIndex(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: selected
                              ? Colors.deepPurple
                              : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: index == 0
                                ? const Radius.circular(8)
                                : Radius.zero,
                            bottomLeft: index == 0
                                ? const Radius.circular(8)
                                : Radius.zero,
                            topRight: index == tabs.length - 1
                                ? const Radius.circular(8)
                                : Radius.zero,
                            bottomRight: index == tabs.length - 1
                                ? const Radius.circular(8)
                                : Radius.zero,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 🟣 Left Icon (Simple Circle, No Gradient)
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              // width: 30,
                              // height: 30,
                              // decoration: BoxDecoration(
                              //   color: selected
                              //       ? Colors.white.withOpacity(0.2)
                              //       : Colors.deepPurple.withOpacity(0.1),
                              //   shape: BoxShape.circle,
                              // ),
                              child: Icon(
                                tabs[index]["icon"],
                                size: 18,
                                color: selected ? Colors.white : Colors.black,
                              ),
                            ),
                            //const SizedBox(width: 8),

                            // 🟪 Tab Text
                            AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 300),
                              style: TextStyle(
                                color: selected ? Colors.white : Colors.black,
                                // fontWeight: selected
                                //     ? FontWeight.bold
                                //     : FontWeight.w500,
                              ),
                              child: Text(tabs[index]["text"]),
                            ),

                            // // 🟢 Right-side Indicator Dot (only for last icon)
                            // if (index == tabs.length - 1)
                            //   Positioned(
                            //     right: 8,
                            //     top: 10,
                            //     child: AnimatedOpacity(
                            //       duration:
                            //       const Duration(milliseconds: 300),
                            //       opacity: selected ? 1 : 0.3,
                            //       child: Container(
                            //         width: 10,
                            //         height: 10,
                            //         decoration: BoxDecoration(
                            //           color: selected
                            //               ? Colors.greenAccent
                            //               : Colors.grey,
                            //           shape: BoxShape.circle,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Obx(() {
              return pages[controller.selectedIndex.value];
            }),
          ),
        ],
      ),
    );
  }
}