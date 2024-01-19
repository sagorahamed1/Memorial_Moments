import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';

class BottomNavController extends GetxController{
  int bottomNavIndex = 0;
  List<Map<String, dynamic>> iconList = [
    {'icon': appIcons.home, 'label': AppConstants.home},
    {'icon': appIcons.archive, 'label': AppConstants.archive},
    {'icon': appIcons.search, 'label': AppConstants.search},
    {'icon': appIcons.circle, 'label': AppConstants.profile},
  ];

  void changeBottomNavIndex(int index) {
    // bottomNavIndex.value = index;
  }
}