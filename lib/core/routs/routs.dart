import 'package:flutter_task/views/auth/login/loginpage.dart';
import 'package:flutter_task/views/auth/signup/singuppage.dart';
import 'package:flutter_task/views/course/personalizingpage.dart';
import 'package:flutter_task/views/homepage/homepage.dart';
import 'package:flutter_task/views/homepage/pages/course_page.dart';
import 'package:flutter_task/views/homepage/pages/homepages/home_active_page.dart';
import 'package:flutter_task/views/homepage/pages/profile_page.dart';
import 'package:flutter_task/views/homepage/pages/quiz_page.dart';
import 'package:flutter_task/views/homepage/pages/shorts_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String loginpage = "/Loginpage";
  static const String singuppage = "/Singuppage";
  static const String personalizingpage = "/Personalizingpage";
  static const String homepage = "/Homepage";
  static const String homeActivePage = "/HomeActivePage";
  static const String shortspage = "/Shortspage";
  static const String quizpage = "/Quizpage";
  static const String coursePage = "/CoursePage";
  static const String profilePage = "/ProfilePage";

  static List<GetPage> routes = [
    GetPage(name: loginpage, page: () => Loginpage()),
    GetPage(name: singuppage, page: () => Singuppage()),
    GetPage(name: personalizingpage, page: () => Personalizingpage()),
    GetPage(name: homepage, page: () => Homepage()),
    GetPage(name: homeActivePage, page: () => HomeActivePage()),
    GetPage(name: shortspage, page: () => Shortspage()),
    GetPage(name: quizpage, page: () => Quizpage()),
    GetPage(name: coursePage, page: () => CoursePage()),
    GetPage(name: profilePage, page: () => ProfilePage()),
  ];
}
