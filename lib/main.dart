import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/views/auth/login/loginpage.dart';
import 'package:get/get.dart';

import 'core/dipendency/dipendency.dart';
import 'core/routs/routs.dart';

void main() {
  Dependencys di = Dependencys();
  di.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        home: Loginpage(),
      ),
    );
  }
}
