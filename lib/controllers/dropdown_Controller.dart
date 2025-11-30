import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PersonalizingController extends GetxController {
  // Text Controllers
  final schoolController = TextEditingController();
  final subjectController = TextEditingController();
  final gradeController = TextEditingController();
  final hearController = TextEditingController();

  // Selected values
  var selectedGrade = "Primary 5".obs;
  var selectedHear = "Friends".obs;

  // Visibility controls
  var showGradeDropdown = false.obs;
  var showHearDropdown = false.obs;

  // Dropdown lists
  final gradeList = [
    'Primary 1',
    'Primary 2',
    'Primary 3',
    'Primary 4',
    'Primary 5',
    'Primary 6',
    'Secondary 1',
    'Secondary 2',
    'Secondary 3',
    'Secondary 4',
  ];

  final hearAboutList = [
    'Friends',
    'Social Media',
    'Advertisement',
    'School',
    'Family',
    'Others',
  ];

  void toggleGradeDropdown() {
    showGradeDropdown.value = !showGradeDropdown.value;
    showHearDropdown.value = false;
  }

  void toggleHearDropdown() {
    showHearDropdown.value = !showHearDropdown.value;
    showGradeDropdown.value = false;
  }

  void selectGrade(String value) {
    selectedGrade.value = value;
    gradeController.text = value;
    showGradeDropdown.value = false;
  }

  void selectHear(String value) {
    selectedHear.value = value;
    hearController.text = value;
    showHearDropdown.value = false;
  }
}