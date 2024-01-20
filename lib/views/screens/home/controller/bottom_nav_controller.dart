import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';

class BottomNavController extends GetxController{
  int bottomNavIndex = 0;
  List<Map<String, dynamic>> iconList = [
    {'icon': AppIcons.home, 'label': AppConstants.home},
    {'icon': AppIcons.archive, 'label': AppConstants.archive},
    {'icon': AppIcons.search, 'label': AppConstants.search},
    {'icon': AppIcons.circle, 'label': AppConstants.profile},
  ];

  void changeBottomNavIndex(int index) {
    // bottomNavIndex.value = index;
  }
}