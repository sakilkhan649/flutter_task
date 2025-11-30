import 'package:flutter_task/views/auth/login/loginpage.dart';
import 'package:flutter_task/views/auth/signup/singuppage.dart';
import 'package:flutter_task/views/homepage/homepage.dart';
import 'package:flutter_task/views/homepage/pages/course_page.dart';
import 'package:flutter_task/views/homepage/pages/home_active_page.dart';
import 'package:flutter_task/views/homepage/pages/profile_page.dart';
import 'package:flutter_task/views/homepage/pages/quiz_page.dart';
import 'package:flutter_task/views/homepage/pages/shorts_page.dart';
import 'package:get/get.dart';
import '../../views/course/personalizingpage.dart';

class Dependencys extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Loginpage(), fenix: true);
    Get.lazyPut(() => Singuppage(), fenix: true);
    Get.lazyPut(() => Personalizingpage(), fenix: true);
    Get.lazyPut(() => Homepage(), fenix: true);
    Get.lazyPut(() => HomeActivePage(), fenix: true);
    Get.lazyPut(() => Shortspage(), fenix: true);
    Get.lazyPut(() => Quizpage(), fenix: true);
    Get.lazyPut(() => CoursePage(), fenix: true);
    Get.lazyPut(() => ProfilePage(), fenix: true);
  }
}
